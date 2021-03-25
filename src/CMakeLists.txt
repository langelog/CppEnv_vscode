set(BINARY ${CMAKE_PROJECT_NAME})

# find_package( Threads )

add_executable(
    ${BINARY}
    main.cpp
)

add_library(
    ${BINARY}_lib
    STATIC
    main.cpp
)

target_link_libraries(
    ${BINARY}
)
