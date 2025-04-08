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

rm -rf "$BUILD_DIR" "$INSTALL_DIR" "$UNIVERSAL_DIR" "$XCFRAMEWORK_NAME"

build_arch () {
  PLATFORM=$1
  ARCH=$2
  SYSROOT=$3

  echo "🔧 Building for $PLATFORM ($ARCH)..."

  BUILD_PATH="$BUILD_DIR/$PLATFORM-$ARCH"
  INSTALL_PATH="$INSTALL_DIR/$PLATFORM-$ARCH"

  mkdir -p "$BUILD_PATH"
  cd "$BUILD_PATH"

  cmake "$SRC_DIR" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_OSX_SYSROOT=$SYSROOT \
    -DCMAKE_OSX_ARCHITECTURES=$ARCH \
    -DCMAKE_INSTALL_PREFIX="$INSTALL_PATH" \
    -DBUILD_SHARED_LIBS=OFF \
    -DHDF5_BUILD_TOOLS=OFF \
    -DHDF5_BUILD_EXAMPLES=OFF \
    -DHDF5_ENABLE_SZIP_SUPPORT=OFF \
    -DHDF5_ENABLE_Z_LIB_SUPPORT=OFF \
    -DCMAKE_DISABLE_FIND_PACKAGE_SZIP=TRUE

  make -j$(sysctl -n hw.logicalcpu)
  make install
}

# Build for physical device (iphoneos arm64)
build_arch iphoneos arm64 iphoneos

# Build for simulator (iphonesimulator arm64 and x86_64)
build_arch iphonesimulator arm64 iphonesimulator
build_arch iphonesimulator x86_64 iphonesimulator

# Combine simulator libs (arm64 + x86_64)
mkdir -p "$UNIVERSAL_DIR/simulator"
lipo -create \
  "$INSTALL_DIR/iphonesimulator-arm64/lib/libhdf5.a" \
  "$INSTALL_DIR/iphonesimulator-x86_64/lib/libhdf5.a" \
  -output "$UNIVERSAL_DIR/simulator/libhdf5.a"

# Device lib
mkdir -p "$UNIVERSAL_DIR/device"
cp "$INSTALL_DIR/iphoneos-arm64/lib/libhdf5.a" "$UNIVERSAL_DIR/device/libhdf5.a"

# Headers (only needed once)
mkdir -p "$HEADERS_DIR"
cp -R "$INSTALL_DIR/iphoneos-arm64/include/"* "$HEADERS_DIR/"

cat > "$HEADERS_DIR/module.modulemap" <<EOF
module HDF5 [system] {
    header "hdf5.h"
    export *
}
EOF

echo "📦 Creating .xcframework..."
rm -rf "$XCFRAMEWORK_NAME"
xcodebuild -create-xcframework \
  -library "$UNIVERSAL_DIR/device/libhdf5.a" -headers "$HEADERS_DIR" \
  -library "$UNIVERSAL_DIR/simulator/libhdf5.a" -headers "$HEADERS_DIR" \
  -output "$XCFRAMEWORK_NAME"

echo "✅ Done! XCFramework is at: $XCFRAMEWORK_NAME"
