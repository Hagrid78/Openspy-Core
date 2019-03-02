cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(keyserver SHARED
        ${COMMON_SRC}
        gskeyserv.cpp
        gskeyserv.h
        )

target_link_libraries(keyserver ${MYSQL_CLIENT_LIBS})

set_target_properties(keyserver PROPERTIES OUTPUT_NAME "gskeyserv")
set_target_properties(keyserver PROPERTIES PREFIX "")
set_target_properties(keyserver PROPERTIES SUFFIX ".so")