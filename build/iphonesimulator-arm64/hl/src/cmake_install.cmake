# Install script for directory: /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "hlheaders" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src/H5DOpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src/H5DSpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src/H5IMpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src/H5LTpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src/H5PTpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src/H5TBpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src/H5LDpublic.h"
    "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/hl/src/hdf5_hl.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hllibraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/bin/libhdf5_hl.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdf5_hl.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdf5_hl.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhdf5_hl.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hllibraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CMakeFiles/hdf5_hl.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hllibraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CMakeFiles/h5hlcc")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/hl/src/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
