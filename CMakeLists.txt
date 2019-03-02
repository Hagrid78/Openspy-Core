cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

set(CMAKE_CXX_STANDARD 14)

set(THREADS_PREFER_PTHREAD_FLAG ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/openspy")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/openspy/modules")

file(GLOB COMMON_SRC
        "${CMAKE_CURRENT_SOURCE_DIR}/common/*.h"
        "${CMAKE_CURRENT_SOURCE_DIR}/common/*.cpp"
        "${CMAKE_CURRENT_SOURCE_DIR}/common/*.c"
        )

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/")

find_package(Boost REQUIRED date_time)
find_package(Threads REQUIRED)
find_package(MySQL REQUIRED)
find_package(Lua51 REQUIRED)
find_package(GeoIP REQUIRED)

set (DEBUG_FLAGS "-Wstack-protector -fstack-protector-all -ggdb -Wwrite-strings")
set (RELEASE_FLAGS "-Wwrite-strings")

set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} ${DEBUG_FLAGS}")
set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} ${DEBUG_FLAGS}")

set (CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} ${RELEASE_FLAGS}")
set (CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} ${RELEASE_FLAGS}")

if (CMAKE_BUILD_TYPE MATCHES Debug)
    set (CMAKE_CXX_LINK_EXECUTABLE "${CMAKE_CXX_LINK_EXECUTABLE} ${DEBUG_FLAGS}")
elseif(CMAKE_BUILD_TYPE MATCHES Release)
    set (CMAKE_CXX_LINK_EXECUTABLE "${CMAKE_CXX_LINK_EXECUTABLE} ${RELEASE_FLAGS}")
endif ()

include_directories(${BOOST_INCLUDE_DIRS})
include_directories(${MYSQL_INCLUDE_DIR})
include_directories(${LUA_INCLUDE_DIR})
include_directories(${GEOIP_INCLUDEDIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_executable(openspy
        ${COMMON_SRC}
        openspy/config.cpp
        openspy/config.h
        openspy/main.cpp
        openspy/main.h
        openspy/module.cpp
        openspy/module.h
        openspy/structs.h
        )

target_link_libraries(openspy ${CMAKE_DL_LIBS})
target_link_libraries(openspy Threads::Threads)
target_link_libraries(openspy ${MYSQL_CLIENT_LIBS})

add_subdirectory(keyserver)
add_subdirectory(legacyms)
add_subdirectory(legacystats)
add_subdirectory(legacystatsprocessor)
add_subdirectory(natneg)
add_subdirectory(peerchat)
add_subdirectory(playersearch)
add_subdirectory(playerspy)
add_subdirectory(qr)
add_subdirectory(serverbrowsing)
add_subdirectory(udf)