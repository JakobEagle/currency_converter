cmake_minimum_required(VERSION 3.27.4)
project(currency_converter)

# Enable C++23 standard
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add pthread flag for threading support
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

# Find SQLite3
find_package(SQLite3 REQUIRED)

# Find Boost with required components
find_package(Boost REQUIRED)

# Find OpenSSL with required components
find_package(OpenSSL REQUIRED)

# Define the source and include directories
set(SOURCE_DIR ${PROJECT_SOURCE_DIR}/src)
set(INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)

# Gather all source files
file(GLOB_RECURSE SOURCES "${SOURCE_DIR}/*.cpp")

# Debugging output
message(STATUS "Source Directory: ${SOURCE_DIR}")
message(STATUS "Include Directory: ${INCLUDE_DIR}")
message(STATUS "Source Files: ${SOURCES}")

# Add your executable
add_executable(currency_converter ${SOURCES})

# Include directories specific to the target
target_include_directories(currency_converter PRIVATE ${Boost_INCLUDE_DIRS} ${SQLite3_INCLUDE_DIRS} ${INCLUDE_DIR})

# Link against SQLite3, Boost, and pthread libraries
target_link_libraries(currency_converter PRIVATE ${Boost_LIBRARIES} SQLite::SQLite3 Threads::Threads OpenSSL::SSL OpenSSL::Crypto)
