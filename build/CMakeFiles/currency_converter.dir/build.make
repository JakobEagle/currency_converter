# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jakob-adler/c++/currency_converter/currency_converter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jakob-adler/c++/currency_converter/currency_converter/build

# Include any dependencies generated for this target.
include CMakeFiles/currency_converter.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/currency_converter.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/currency_converter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/currency_converter.dir/flags.make

CMakeFiles/currency_converter.dir/src/main.cpp.o: CMakeFiles/currency_converter.dir/flags.make
CMakeFiles/currency_converter.dir/src/main.cpp.o: /home/jakob-adler/c++/currency_converter/currency_converter/src/main.cpp
CMakeFiles/currency_converter.dir/src/main.cpp.o: CMakeFiles/currency_converter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jakob-adler/c++/currency_converter/currency_converter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/currency_converter.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/currency_converter.dir/src/main.cpp.o -MF CMakeFiles/currency_converter.dir/src/main.cpp.o.d -o CMakeFiles/currency_converter.dir/src/main.cpp.o -c /home/jakob-adler/c++/currency_converter/currency_converter/src/main.cpp

CMakeFiles/currency_converter.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/currency_converter.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakob-adler/c++/currency_converter/currency_converter/src/main.cpp > CMakeFiles/currency_converter.dir/src/main.cpp.i

CMakeFiles/currency_converter.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/currency_converter.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakob-adler/c++/currency_converter/currency_converter/src/main.cpp -o CMakeFiles/currency_converter.dir/src/main.cpp.s

# Object files for target currency_converter
currency_converter_OBJECTS = \
"CMakeFiles/currency_converter.dir/src/main.cpp.o"

# External object files for target currency_converter
currency_converter_EXTERNAL_OBJECTS =

currency_converter: CMakeFiles/currency_converter.dir/src/main.cpp.o
currency_converter: CMakeFiles/currency_converter.dir/build.make
currency_converter: /usr/lib/x86_64-linux-gnu/libsqlite3.so
currency_converter: /usr/lib/x86_64-linux-gnu/libssl.so
currency_converter: /usr/lib/x86_64-linux-gnu/libcrypto.so
currency_converter: CMakeFiles/currency_converter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/jakob-adler/c++/currency_converter/currency_converter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable currency_converter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/currency_converter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/currency_converter.dir/build: currency_converter
.PHONY : CMakeFiles/currency_converter.dir/build

CMakeFiles/currency_converter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/currency_converter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/currency_converter.dir/clean

CMakeFiles/currency_converter.dir/depend:
	cd /home/jakob-adler/c++/currency_converter/currency_converter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jakob-adler/c++/currency_converter/currency_converter /home/jakob-adler/c++/currency_converter/currency_converter /home/jakob-adler/c++/currency_converter/currency_converter/build /home/jakob-adler/c++/currency_converter/currency_converter/build /home/jakob-adler/c++/currency_converter/currency_converter/build/CMakeFiles/currency_converter.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/currency_converter.dir/depend

