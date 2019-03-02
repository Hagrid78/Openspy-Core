cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(qr SHARED
        ${COMMON_SRC}
        Client.cpp
        Client.h
        filter.cpp
        filter.h
        main.cpp
        main.h
        server.cpp
        server.h
        structs.h
        )

target_link_libraries(qr ${MYSQL_CLIENT_LIBS})
target_link_libraries(qr ${GEOIP_LIBRARIES})

set_target_properties(qr PROPERTIES OUTPUT_NAME "qr")
set_target_properties(qr PROPERTIES PREFIX "")
set_target_properties(qr PROPERTIES SUFFIX ".so")