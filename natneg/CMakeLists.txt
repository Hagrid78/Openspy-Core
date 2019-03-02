cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(natneg SHARED
        ${COMMON_SRC}
        Client.cpp
        Client.h
        main.cpp
        main.h
        server.cpp
        server.h
        structs.h
        )

target_link_libraries(natneg ${MYSQL_CLIENT_LIBS})

set_target_properties(natneg PROPERTIES OUTPUT_NAME "natneg")
set_target_properties(natneg PROPERTIES PREFIX "")
set_target_properties(natneg PROPERTIES SUFFIX ".so")