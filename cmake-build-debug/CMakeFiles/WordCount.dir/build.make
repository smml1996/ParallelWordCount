# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/stefaniemuroyalei/Documents/WordCount

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/stefaniemuroyalei/Documents/WordCount/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/WordCount.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/WordCount.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/WordCount.dir/flags.make

CMakeFiles/WordCount.dir/main.cpp.o: CMakeFiles/WordCount.dir/flags.make
CMakeFiles/WordCount.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/stefaniemuroyalei/Documents/WordCount/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/WordCount.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WordCount.dir/main.cpp.o -c /Users/stefaniemuroyalei/Documents/WordCount/main.cpp

CMakeFiles/WordCount.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WordCount.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/stefaniemuroyalei/Documents/WordCount/main.cpp > CMakeFiles/WordCount.dir/main.cpp.i

CMakeFiles/WordCount.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WordCount.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/stefaniemuroyalei/Documents/WordCount/main.cpp -o CMakeFiles/WordCount.dir/main.cpp.s

CMakeFiles/WordCount.dir/PrefixTree.cpp.o: CMakeFiles/WordCount.dir/flags.make
CMakeFiles/WordCount.dir/PrefixTree.cpp.o: ../PrefixTree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/stefaniemuroyalei/Documents/WordCount/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/WordCount.dir/PrefixTree.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WordCount.dir/PrefixTree.cpp.o -c /Users/stefaniemuroyalei/Documents/WordCount/PrefixTree.cpp

CMakeFiles/WordCount.dir/PrefixTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WordCount.dir/PrefixTree.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/stefaniemuroyalei/Documents/WordCount/PrefixTree.cpp > CMakeFiles/WordCount.dir/PrefixTree.cpp.i

CMakeFiles/WordCount.dir/PrefixTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WordCount.dir/PrefixTree.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/stefaniemuroyalei/Documents/WordCount/PrefixTree.cpp -o CMakeFiles/WordCount.dir/PrefixTree.cpp.s

# Object files for target WordCount
WordCount_OBJECTS = \
"CMakeFiles/WordCount.dir/main.cpp.o" \
"CMakeFiles/WordCount.dir/PrefixTree.cpp.o"

# External object files for target WordCount
WordCount_EXTERNAL_OBJECTS =

WordCount: CMakeFiles/WordCount.dir/main.cpp.o
WordCount: CMakeFiles/WordCount.dir/PrefixTree.cpp.o
WordCount: CMakeFiles/WordCount.dir/build.make
WordCount: CMakeFiles/WordCount.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/stefaniemuroyalei/Documents/WordCount/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable WordCount"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WordCount.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/WordCount.dir/build: WordCount

.PHONY : CMakeFiles/WordCount.dir/build

CMakeFiles/WordCount.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/WordCount.dir/cmake_clean.cmake
.PHONY : CMakeFiles/WordCount.dir/clean

CMakeFiles/WordCount.dir/depend:
	cd /Users/stefaniemuroyalei/Documents/WordCount/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stefaniemuroyalei/Documents/WordCount /Users/stefaniemuroyalei/Documents/WordCount /Users/stefaniemuroyalei/Documents/WordCount/cmake-build-debug /Users/stefaniemuroyalei/Documents/WordCount/cmake-build-debug /Users/stefaniemuroyalei/Documents/WordCount/cmake-build-debug/CMakeFiles/WordCount.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/WordCount.dir/depend
