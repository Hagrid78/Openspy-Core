cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(playerspy SHARED
        ${COMMON_SRC}
        Client.cpp
        Client.h
        gp.h
        main.cpp
        main.h
        server.cpp
        server.h
        structs.h
        )

target_link_libraries(playerspy ${MYSQL_CLIENT_LIBS})

set_target_properties(playerspy PROPERTIES OUTPUT_NAME "playerspy")
set_target_properties(playerspy PROPERTIES PREFIX "")
set_target_properties(playerspy PROPERTIES SUFFIX ".so")