cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(legacystatsprocessor SHARED
        ${COMMON_SRC}
        cfuncs.cpp
        cfuncs.h
        handler.cpp
        handler.h
        main.cpp
        main.h
        statsmanage.cpp
        statsmanage.h
        structs.h
        )

target_link_libraries(legacystatsprocessor ${MYSQL_CLIENT_LIBS})
target_link_libraries(legacystatsprocessor ${LUA_LIBRARIES})

set_target_properties(legacystatsprocessor PROPERTIES OUTPUT_NAME "legacystatsprocessor")
set_target_properties(legacystatsprocessor PROPERTIES PREFIX "")
set_target_properties(legacystatsprocessor PROPERTIES SUFFIX ".so")