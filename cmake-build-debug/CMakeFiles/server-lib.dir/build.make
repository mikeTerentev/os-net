# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/miketerentyev/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/183.5429.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/miketerentyev/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/183.5429.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/miketerentyev/itmo/2-year/os-course/os-net

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/miketerentyev/itmo/2-year/os-course/os-net/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/server-lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server-lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server-lib.dir/flags.make

CMakeFiles/server-lib.dir/server-lib/server.cpp.o: CMakeFiles/server-lib.dir/flags.make
CMakeFiles/server-lib.dir/server-lib/server.cpp.o: ../server-lib/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/miketerentyev/itmo/2-year/os-course/os-net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server-lib.dir/server-lib/server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server-lib.dir/server-lib/server.cpp.o -c /Users/miketerentyev/itmo/2-year/os-course/os-net/server-lib/server.cpp

CMakeFiles/server-lib.dir/server-lib/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server-lib.dir/server-lib/server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/miketerentyev/itmo/2-year/os-course/os-net/server-lib/server.cpp > CMakeFiles/server-lib.dir/server-lib/server.cpp.i

CMakeFiles/server-lib.dir/server-lib/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server-lib.dir/server-lib/server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/miketerentyev/itmo/2-year/os-course/os-net/server-lib/server.cpp -o CMakeFiles/server-lib.dir/server-lib/server.cpp.s

# Object files for target server-lib
server__lib_OBJECTS = \
"CMakeFiles/server-lib.dir/server-lib/server.cpp.o"

# External object files for target server-lib
server__lib_EXTERNAL_OBJECTS =

libserver-lib.a: CMakeFiles/server-lib.dir/server-lib/server.cpp.o
libserver-lib.a: CMakeFiles/server-lib.dir/build.make
libserver-lib.a: CMakeFiles/server-lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/miketerentyev/itmo/2-year/os-course/os-net/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libserver-lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/server-lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server-lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server-lib.dir/build: libserver-lib.a

.PHONY : CMakeFiles/server-lib.dir/build

CMakeFiles/server-lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server-lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server-lib.dir/clean

CMakeFiles/server-lib.dir/depend:
	cd /Users/miketerentyev/itmo/2-year/os-course/os-net/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/miketerentyev/itmo/2-year/os-course/os-net /Users/miketerentyev/itmo/2-year/os-course/os-net /Users/miketerentyev/itmo/2-year/os-course/os-net/cmake-build-debug /Users/miketerentyev/itmo/2-year/os-course/os-net/cmake-build-debug /Users/miketerentyev/itmo/2-year/os-course/os-net/cmake-build-debug/CMakeFiles/server-lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server-lib.dir/depend

