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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.6/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/build

# Include any dependencies generated for this target.
include CMakeFiles/MyRaylibGame.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MyRaylibGame.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyRaylibGame.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyRaylibGame.dir/flags.make

CMakeFiles/MyRaylibGame.dir/main.cpp.o: CMakeFiles/MyRaylibGame.dir/flags.make
CMakeFiles/MyRaylibGame.dir/main.cpp.o: /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/main.cpp
CMakeFiles/MyRaylibGame.dir/main.cpp.o: CMakeFiles/MyRaylibGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyRaylibGame.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyRaylibGame.dir/main.cpp.o -MF CMakeFiles/MyRaylibGame.dir/main.cpp.o.d -o CMakeFiles/MyRaylibGame.dir/main.cpp.o -c /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/main.cpp

CMakeFiles/MyRaylibGame.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyRaylibGame.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/main.cpp > CMakeFiles/MyRaylibGame.dir/main.cpp.i

CMakeFiles/MyRaylibGame.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyRaylibGame.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/main.cpp -o CMakeFiles/MyRaylibGame.dir/main.cpp.s

# Object files for target MyRaylibGame
MyRaylibGame_OBJECTS = \
"CMakeFiles/MyRaylibGame.dir/main.cpp.o"

# External object files for target MyRaylibGame
MyRaylibGame_EXTERNAL_OBJECTS =

MyRaylibGame: CMakeFiles/MyRaylibGame.dir/main.cpp.o
MyRaylibGame: CMakeFiles/MyRaylibGame.dir/build.make
MyRaylibGame: /opt/local/lib/libraylib.dylib
MyRaylibGame: CMakeFiles/MyRaylibGame.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MyRaylibGame"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyRaylibGame.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MyRaylibGame.dir/build: MyRaylibGame
.PHONY : CMakeFiles/MyRaylibGame.dir/build

CMakeFiles/MyRaylibGame.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MyRaylibGame.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MyRaylibGame.dir/clean

CMakeFiles/MyRaylibGame.dir/depend:
	cd /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/build /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/build /Users/andreasteguhsantosokosasih/Desktop/RetroPongGame/build/CMakeFiles/MyRaylibGame.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/MyRaylibGame.dir/depend

