# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6;/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "configinstall;hdfdocuments;headers;hlheaders;hllibraries;libraries;utilsapplications")
set(CPACK_COMPONENTS_ALL_IN_ONE_PACKAGE "ON")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/opt/homebrew/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "HDF5 built using CMake")
set(CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE "ON")
set(CPACK_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INNOSETUP_ARCHITECTURE "x64")
set(CPACK_INSTALLED_DIRECTORIES "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/Users/stefanorizzetto/Documents/HDF5Kit/install/iphonesimulator-arm64")
set(CPACK_MODULE_PATH "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/config/cmake")
set(CPACK_NSIS_DISPLAY_NAME "HDF_Group/HDF5/1.14.6")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "HDF_Group/HDF5/1.14.6")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OBJDUMP_EXECUTABLE "/usr/bin/objdump")
set(CPACK_ORIG_SOURCE_DIR "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6")
set(CPACK_OSX_SYSROOT "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator18.2.sdk")
set(CPACK_OUTPUT_CONFIG_FILE "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/release_docs/RELEASE.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "HDF5 built using CMake")
set(CPACK_PACKAGE_FILE_NAME "HDF5-1.14.6-Source")
set(CPACK_PACKAGE_ICON "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/config/cmake/hdf.icns")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "HDF_Group/HDF5/1.14.6")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "HDF_Group/HDF5/1.14.6")
set(CPACK_PACKAGE_NAME "HDF5")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "HDF_Group")
set(CPACK_PACKAGE_VERSION "1.14.6")
set(CPACK_PACKAGE_VERSION_MAJOR "1.14")
set(CPACK_PACKAGE_VERSION_MINOR "6")
set(CPACK_PACKAGE_VERSION_PATCH "")
set(CPACK_PACKAGING_INSTALL_PREFIX "/HDF_Group/HDF5/1.14.6")
set(CPACK_RESOURCE_FILE_LICENSE "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/COPYING")
set(CPACK_RESOURCE_FILE_README "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/release_docs/RELEASE.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/opt/homebrew/share/cmake/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "/Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "HDF5-1.14.6-Source")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TOPLEVEL_TAG "Darwin-Source")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "Darwin")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Darwin-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
