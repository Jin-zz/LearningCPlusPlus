# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Chapter3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Chapter3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Chapter3.dir/flags.make

CMakeFiles/Chapter3.dir/main.cpp.o: CMakeFiles/Chapter3.dir/flags.make
CMakeFiles/Chapter3.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Chapter3.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chapter3.dir/main.cpp.o -c /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/main.cpp

CMakeFiles/Chapter3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chapter3.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/main.cpp > CMakeFiles/Chapter3.dir/main.cpp.i

CMakeFiles/Chapter3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chapter3.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/main.cpp -o CMakeFiles/Chapter3.dir/main.cpp.s

CMakeFiles/Chapter3.dir/StringConstructor.cpp.o: CMakeFiles/Chapter3.dir/flags.make
CMakeFiles/Chapter3.dir/StringConstructor.cpp.o: ../StringConstructor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Chapter3.dir/StringConstructor.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chapter3.dir/StringConstructor.cpp.o -c /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/StringConstructor.cpp

CMakeFiles/Chapter3.dir/StringConstructor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chapter3.dir/StringConstructor.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/StringConstructor.cpp > CMakeFiles/Chapter3.dir/StringConstructor.cpp.i

CMakeFiles/Chapter3.dir/StringConstructor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chapter3.dir/StringConstructor.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/StringConstructor.cpp -o CMakeFiles/Chapter3.dir/StringConstructor.cpp.s

CMakeFiles/Chapter3.dir/VectorConstructor.cpp.o: CMakeFiles/Chapter3.dir/flags.make
CMakeFiles/Chapter3.dir/VectorConstructor.cpp.o: ../VectorConstructor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Chapter3.dir/VectorConstructor.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chapter3.dir/VectorConstructor.cpp.o -c /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/VectorConstructor.cpp

CMakeFiles/Chapter3.dir/VectorConstructor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chapter3.dir/VectorConstructor.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/VectorConstructor.cpp > CMakeFiles/Chapter3.dir/VectorConstructor.cpp.i

CMakeFiles/Chapter3.dir/VectorConstructor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chapter3.dir/VectorConstructor.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/VectorConstructor.cpp -o CMakeFiles/Chapter3.dir/VectorConstructor.cpp.s

CMakeFiles/Chapter3.dir/TypeConversion.cpp.o: CMakeFiles/Chapter3.dir/flags.make
CMakeFiles/Chapter3.dir/TypeConversion.cpp.o: ../TypeConversion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Chapter3.dir/TypeConversion.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chapter3.dir/TypeConversion.cpp.o -c /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/TypeConversion.cpp

CMakeFiles/Chapter3.dir/TypeConversion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chapter3.dir/TypeConversion.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/TypeConversion.cpp > CMakeFiles/Chapter3.dir/TypeConversion.cpp.i

CMakeFiles/Chapter3.dir/TypeConversion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chapter3.dir/TypeConversion.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/TypeConversion.cpp -o CMakeFiles/Chapter3.dir/TypeConversion.cpp.s

CMakeFiles/Chapter3.dir/iteratorUsing.cpp.o: CMakeFiles/Chapter3.dir/flags.make
CMakeFiles/Chapter3.dir/iteratorUsing.cpp.o: ../iteratorUsing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Chapter3.dir/iteratorUsing.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chapter3.dir/iteratorUsing.cpp.o -c /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/iteratorUsing.cpp

CMakeFiles/Chapter3.dir/iteratorUsing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chapter3.dir/iteratorUsing.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/iteratorUsing.cpp > CMakeFiles/Chapter3.dir/iteratorUsing.cpp.i

CMakeFiles/Chapter3.dir/iteratorUsing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chapter3.dir/iteratorUsing.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/iteratorUsing.cpp -o CMakeFiles/Chapter3.dir/iteratorUsing.cpp.s

CMakeFiles/Chapter3.dir/arrayTest.cpp.o: CMakeFiles/Chapter3.dir/flags.make
CMakeFiles/Chapter3.dir/arrayTest.cpp.o: ../arrayTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Chapter3.dir/arrayTest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chapter3.dir/arrayTest.cpp.o -c /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/arrayTest.cpp

CMakeFiles/Chapter3.dir/arrayTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chapter3.dir/arrayTest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/arrayTest.cpp > CMakeFiles/Chapter3.dir/arrayTest.cpp.i

CMakeFiles/Chapter3.dir/arrayTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chapter3.dir/arrayTest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/arrayTest.cpp -o CMakeFiles/Chapter3.dir/arrayTest.cpp.s

# Object files for target Chapter3
Chapter3_OBJECTS = \
"CMakeFiles/Chapter3.dir/main.cpp.o" \
"CMakeFiles/Chapter3.dir/StringConstructor.cpp.o" \
"CMakeFiles/Chapter3.dir/VectorConstructor.cpp.o" \
"CMakeFiles/Chapter3.dir/TypeConversion.cpp.o" \
"CMakeFiles/Chapter3.dir/iteratorUsing.cpp.o" \
"CMakeFiles/Chapter3.dir/arrayTest.cpp.o"

# External object files for target Chapter3
Chapter3_EXTERNAL_OBJECTS =

Chapter3: CMakeFiles/Chapter3.dir/main.cpp.o
Chapter3: CMakeFiles/Chapter3.dir/StringConstructor.cpp.o
Chapter3: CMakeFiles/Chapter3.dir/VectorConstructor.cpp.o
Chapter3: CMakeFiles/Chapter3.dir/TypeConversion.cpp.o
Chapter3: CMakeFiles/Chapter3.dir/iteratorUsing.cpp.o
Chapter3: CMakeFiles/Chapter3.dir/arrayTest.cpp.o
Chapter3: CMakeFiles/Chapter3.dir/build.make
Chapter3: CMakeFiles/Chapter3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Chapter3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Chapter3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Chapter3.dir/build: Chapter3

.PHONY : CMakeFiles/Chapter3.dir/build

CMakeFiles/Chapter3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Chapter3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Chapter3.dir/clean

CMakeFiles/Chapter3.dir/depend:
	cd /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3 /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3 /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug /Users/jinzhuoqun/Documents/LearningCPlusPlus/Code/Chapter3/cmake-build-debug/CMakeFiles/Chapter3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Chapter3.dir/depend

