#!/bin/bash

set -e

# Config
HDF5_VERSION="1.14.6"
HDF5_BASE_NAME="hdf5-${HDF5_VERSION}"
HDF5_TARBALL_URL="https://github.com/HDFGroup/hdf5/archive/refs/tags/hdf5-${HDF5_VERSION}.tar.gz"

# Paths
ROOT_DIR=$(pwd)
SRC_DIR="$ROOT_DIR/$HDF5_BASE_NAME"
BUILD_DIR="$ROOT_DIR/build"
INSTALL_DIR="$ROOT_DIR/install"
UNIVERSAL_DIR="$ROOT_DIR/universal"
HEADERS_DIR="$ROOT_DIR/custom-headers"
XCFRAMEWORK_NAME="HDF5.xcframework"

echo "📦 Downloading HDF5 $HDF5_VERSION..."
if [ ! -d "$SRC_DIR" ]; then
  curl -L -o hdf5.tar.gz "$HDF5_TARBALL_URL"
  tar -xzf hdf5.tar.gz
  rm hdf5.tar.gz
fi

ARCHS=("arm64")

for ARCH in "${ARCHS[@]}"; do
  echo "🔧 Building for iOS Simulator: $ARCH"

  BUILD_ARCH_DIR="$BUILD_DIR/ios-sim-$ARCH"
  INSTALL_ARCH_DIR="$INSTALL_DIR/ios-sim-$ARCH"

  mkdir -p "$BUILD_ARCH_DIR"
  cd "$BUILD_ARCH_DIR"

  cmake "$SRC_DIR" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_OSX_SYSROOT=iphonesimulator \
    -DCMAKE_OSX_ARCHITECTURES=$ARCH \
    -DCMAKE_INSTALL_PREFIX="$INSTALL_ARCH_DIR" \
    -DBUILD_SHARED_LIBS=OFF \
    -DHDF5_BUILD_TOOLS=OFF \
    -DHDF5_BUILD_EXAMPLES=OFF \
    -DHDF5_ENABLE_SZIP_SUPPORT=OFF \
    -DHDF5_ENABLE_Z_LIB_SUPPORT=OFF \
    -DCMAKE_DISABLE_FIND_PACKAGE_SZIP=TRUE

  make -j$(sysctl -n hw.logicalcpu)
  make install
  cd "$ROOT_DIR"
done

echo "📦 Creating universal static lib..."
mkdir -p "$UNIVERSAL_DIR"

lipo -create \
  "$INSTALL_DIR/ios-sim-arm64/lib/libhdf5.a" \
  -output "$UNIVERSAL_DIR/libhdf5.a"

echo "📁 Preparing headers and module.modulemap..."
mkdir -p "$HEADERS_DIR"
cp -R "$INSTALL_DIR/ios-sim-arm64/include/"* "$HEADERS_DIR/"

cat > "$HEADERS_DIR/module.modulemap" <<EOF
module HDF5 [system] {
    header "hdf5.h"
    export *
}
EOF

echo "📦 Creating .xcframework..."
rm -rf "$XCFRAMEWORK_NAME"
xcodebuild -create-xcframework \
  -library "$UNIVERSAL_DIR/libhdf5.a" \
  -headers "$HEADERS_DIR" \
  -output "$XCFRAMEWORK_NAME"

echo "✅ Done! XCFramework is at: $XCFRAMEWORK_NAME"
