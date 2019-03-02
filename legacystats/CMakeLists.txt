cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(legacystats SHARED
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

target_link_libraries(legacystats ${MYSQL_CLIENT_LIBS})

set_target_properties(legacystats PROPERTIES OUTPUT_NAME "legacystats")
set_target_properties(legacystats PROPERTIES PREFIX "")
set_target_properties(legacystats PROPERTIES SUFFIX ".so")