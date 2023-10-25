cmake_minimum_required(VERSION 3.14)

project(Calculator_qml VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

list(APPEND CMAKE_MODULE_PATH
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake"
)

find_package(my_lib REQUIRED)

#find_library(my_lib ${CMAKE_CURRENT_SOURCE_DIR}/my_lib)


find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Quick)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Quick)
#find_package(${CMAKE_SOURCE_DIR}/CMake/)

#set(MY_LIB_PATH "C:/Users/TrieuBui/source/repos/MathLibrary/")
#set(MY_INCLUDE_PATH "${PROJECT_SOURCE_DIR}/MathLibrary/include/")

#find_path(MY_CALC_PATH my_calc_lib PATHS ${PROJECT_SOURCE_DIR}/my_calc_lib/include/)
#find_library(MY_CALC_LIB C:/Users/TrieuBui/source/repos/MathLibrary/Debug/)

set(PROJECT_SOURCES
        main.cpp
        qml.qrc
)

if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)
    qt_add_executable(Calculator_qml
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
    )
# Define target properties for Android with Qt 6 as:
#    set_property(TARGET Calculator_qml APPEND PROPERTY QT_ANDROID_PACKAGE_SOURCE_DIR
#                 ${CMAKE_CURRENT_SOURCE_DIR}/android)
# For more information, see https://doc.qt.io/qt-6/qt-add-executable.html#target-creation
else()
    if(ANDROID)
        add_library(Calculator_qml SHARED
            ${PROJECT_SOURCES}
        )
# Define properties for Android with Qt 5 after find_package() calls as:
#    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
    else()
        add_executable(Calculator_qml
          ${PROJECT_SOURCES}
          calculator_qml.h calculator_qml.cpp
        )
    endif()
endif()

target_link_libraries(Calculator_qml
  PRIVATE
  Qt::Core
  Qt::Quick
#  C:/Users/TrieuBui/source/repos/MathLibrary/Debug/
#  ${MY_LIB_PATH}
  my_lib
)

#target_include_directories(Calculator_qml PRIVATE ${myLibLib})

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
if(${QT_VERSION} VERSION_LESS 6.1.0)
  set(BUNDLE_ID_OPTION MACOSX_BUNDLE_GUI_IDENTIFIER com.example.Calculator_qml)
endif()
set_target_properties(Calculator_qml PROPERTIES
    ${BUNDLE_ID_OPTION}
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

include(GNUInstallDirs)
install(TARGETS Calculator_qml
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})

if(QT_VERSION_MAJOR EQUAL 6)
    qt_import_qml_plugins(Calculator_qml)
    qt_finalize_executable(Calculator_qml)
endif()
