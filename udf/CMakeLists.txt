cmake_minimum_required(VERSION 3.10.2)
project(Openspy_Core)

add_library(udf_matrixqueue SHARED
        Matrix/udf_matrixqueue.c
        )

set_target_properties(udf_matrixqueue PROPERTIES PREFIX "" COMPILE_DEFINITIONS "HAVE_DLOPEN=1")

set_target_properties(udf_matrixqueue PROPERTIES OUTPUT_NAME "udf_matrixqueue")
set_target_properties(udf_matrixqueue PROPERTIES PREFIX "")
set_target_properties(udf_matrixqueue PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/Matrix)