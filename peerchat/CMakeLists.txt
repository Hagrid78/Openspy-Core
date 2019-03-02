cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(peerchat SHARED
        ${COMMON_SRC}
        channel.cpp
        channel.h
        client.cpp
        client.h
        main.cpp
        main.h
        server.cpp
        server.h
        structs.h
        )

target_link_libraries(peerchat ${MYSQL_CLIENT_LIBS})

set_target_properties(peerchat PROPERTIES OUTPUT_NAME "peerchat")
set_target_properties(peerchat PROPERTIES PREFIX "")
set_target_properties(peerchat PROPERTIES SUFFIX ".so")