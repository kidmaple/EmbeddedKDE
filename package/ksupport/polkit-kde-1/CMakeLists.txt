project(polkit-kde-1)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules" "${CMAKE_MODULE_PATH}")

find_package(KDE4 REQUIRED)
include (KDE4Defaults)
include (MacroLibrary)
include (FindPkgConfig)

macro(dbus_add_activation_system_service _sources)
    pkg_search_module( DBUS dbus-1 )
    foreach (_i ${_sources})
        get_filename_component(_service_file ${_i} ABSOLUTE)
        string(REGEX REPLACE "\\.service.*$" ".service" _output_file ${_i})
        set(_target ${CMAKE_CURRENT_BINARY_DIR}/${_output_file})
        configure_file(${_service_file} ${_target})
        install(FILES ${_target} DESTINATION ${DBUS_PREFIX}/share/dbus-1/system-services )
    endforeach (_i ${ARGN})
endmacro(dbus_add_activation_system_service _sources)

find_package(PolkitQt-1 REQUIRED)

include_directories(${KDE4_INCLUDES}
                    ${POLKITQT-1_INCLUDE_DIR})

add_subdirectory(agent)

find_package(Msgfmt REQUIRED)
find_package(Gettext REQUIRED)
add_subdirectory( po )
add_subdirectory( doc-translations )
