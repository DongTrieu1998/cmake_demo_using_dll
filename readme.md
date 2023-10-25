This is a demo project to show you how to add a third party library to your project

First, you must copy your .cmake file into your ${CMAKE_CURRENT_SOURCE_DIR}
    For MODULE mode, copy: Find<your_package>.cmake
    For CONFIG mode, copy <your_package>-config.cmake or <your_package>Config.cmake 

Second, in MODULE mode, you can do like this:

    #append your MODULE to ${CMAKE_MODULE_PATH}
    list(APPEND CMAKE_MODULE_PATH
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

    then 
    #Find your package    
    find_package(<your_pakge> REQUIRED)

    In CONFIG mode, you can do like this:

    #Find your package    
    find_package(<your_pakge> CONFIG REQUIRED)

    Remember the CONFIG keyword, if it is not exists, your CMake file will error

Finally, you must add your include folder, that contains header file of your library:
    
    target_link_libraries(Calculator_qml
    PRIVATE
    Qt::Core
    Qt::Quick
    my_lib) #<---------- link your .h file to project
    
With .cmake file, your .dll .lib .h ,etc will specified automatically by CMake

Now you can use your third party library in your project.