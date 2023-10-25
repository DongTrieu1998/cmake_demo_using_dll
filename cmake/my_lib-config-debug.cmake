#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "my_lib" for configuration "Debug"
set_property(TARGET my_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(my_lib PROPERTIES
  IMPORTED_IMPLIB_DEBUG "D:/TEST/calculator_lib/Cmake/lib/my_lib/my_lib.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "Qt5::Core"
  IMPORTED_LOCATION_DEBUG "D:/TEST/calculator_lib/Cmake/lib/my_lib/my_lib.dll"
  )

list(APPEND _cmake_import_check_targets my_lib )
list(APPEND _cmake_import_check_files_for_my_lib "D:/TEST/calculator_lib/Cmake/lib/my_lib/my_lib.lib" "D:/TEST/calculator_lib/Cmake/lib/my_lib/my_lib.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
