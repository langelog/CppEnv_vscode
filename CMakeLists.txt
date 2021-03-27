cmake_minimum_required( VERSION 3.0 )
project( HelloWorld )

SET(CMAKE_CXX_STANDARD 20)
SET(CMAKE_BUILD_TYPE Debug)

include_directories(
    ./include
)

add_subdirectory( ./thirdparty/googletest )

add_subdirectory( ./src )
add_subdirectory( ./tests )
