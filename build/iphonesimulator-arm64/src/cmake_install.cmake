# Install script for directory: /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/stefanorizzetto/Documents/HDF5Kit/install/iphonesimulator-arm64")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/src/H5FDsubfiling/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/hdf5.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5api_adpt.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5encode.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5public.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Apublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5ACpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Cpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Dpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Epubgen.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Epublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5ESdevelop.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5ESpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Fpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDcore.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDdevelop.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDdirect.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDfamily.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDhdfs.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDlog.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDmirror.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDmpi.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDmpio.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDmulti.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDonion.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDros3.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDs3comms.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDsec2.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDsplitter.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDstdio.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDwindows.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDsubfiling/H5FDsubfiling.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5FDsubfiling/H5FDioc.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Gpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Idevelop.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Ipublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Ldevelop.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Lpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Mpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5MMpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Opublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Ppublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5PLextern.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5PLpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Rpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Spublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Tdevelop.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Tpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5TSdevelop.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5VLconnector.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5VLconnector_passthru.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5VLnative.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5VLpassthru.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5VLpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Zdevelop.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Zpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5Epubgen.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5version.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/src/H5overflow.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/src/H5pubconf.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/bin/libhdf5.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdf5.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdf5.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdf5.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CMakeFiles/hdf5.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CMakeFiles/h5cc")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/src/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
