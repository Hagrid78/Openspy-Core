cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(playersearch SHARED
        ${COMMON_SRC}
        lookup.cpp
        lookup.h
        main.cpp
        main.h
        )

target_link_libraries(playersearch ${MYSQL_CLIENT_LIBS})

set_target_properties(playersearch PROPERTIES OUTPUT_NAME "playersearch")
set_target_properties(playersearch PROPERTIES PREFIX "")
set_target_properties(playersearch PROPERTIES SUFFIX ".so")