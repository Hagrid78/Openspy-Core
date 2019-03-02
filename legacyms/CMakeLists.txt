cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(legacyms SHARED
        ${COMMON_SRC}
        Client.cpp
        Client.h
        main.cpp
        main.h
        server.cpp
        server.h
        )

target_link_libraries(legacyms ${MYSQL_CLIENT_LIBS})

set_target_properties(legacyms PROPERTIES OUTPUT_NAME "legacyms")
set_target_properties(legacyms PROPERTIES PREFIX "")
set_target_properties(legacyms PROPERTIES SUFFIX ".so")