cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(serverbrowsing SHARED
        ${COMMON_SRC}
        Client.cpp
        Client.h
        handler.cpp
        handler.h
        main.cpp
        main.h
        server.cpp
        server.h
        structs.h
        )

target_link_libraries(serverbrowsing ${MYSQL_CLIENT_LIBS})

set_target_properties(serverbrowsing PROPERTIES OUTPUT_NAME "serverbrowsing")
set_target_properties(serverbrowsing PROPERTIES PREFIX "")
set_target_properties(serverbrowsing PROPERTIES SUFFIX ".so")