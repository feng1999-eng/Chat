# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/Chat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Chat/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/ChatServer.dir/depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/ChatServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/ChatServer.dir/flags.make

src/server/CMakeFiles/ChatServer.dir/ChatServer.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/ChatServer.cpp.o: ../src/server/ChatServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/ChatServer.dir/ChatServer.cpp.o"
	cd /root/Chat/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/ChatServer.cpp.o -c /root/Chat/src/server/ChatServer.cpp

src/server/CMakeFiles/ChatServer.dir/ChatServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/ChatServer.cpp.i"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Chat/src/server/ChatServer.cpp > CMakeFiles/ChatServer.dir/ChatServer.cpp.i

src/server/CMakeFiles/ChatServer.dir/ChatServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/ChatServer.cpp.s"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Chat/src/server/ChatServer.cpp -o CMakeFiles/ChatServer.dir/ChatServer.cpp.s

src/server/CMakeFiles/ChatServer.dir/ChatService.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/ChatService.cpp.o: ../src/server/ChatService.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/ChatServer.dir/ChatService.cpp.o"
	cd /root/Chat/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/ChatService.cpp.o -c /root/Chat/src/server/ChatService.cpp

src/server/CMakeFiles/ChatServer.dir/ChatService.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/ChatService.cpp.i"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Chat/src/server/ChatService.cpp > CMakeFiles/ChatServer.dir/ChatService.cpp.i

src/server/CMakeFiles/ChatServer.dir/ChatService.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/ChatService.cpp.s"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Chat/src/server/ChatService.cpp -o CMakeFiles/ChatServer.dir/ChatService.cpp.s

src/server/CMakeFiles/ChatServer.dir/friendmodel.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/friendmodel.cpp.o: ../src/server/friendmodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/ChatServer.dir/friendmodel.cpp.o"
	cd /root/Chat/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/friendmodel.cpp.o -c /root/Chat/src/server/friendmodel.cpp

src/server/CMakeFiles/ChatServer.dir/friendmodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/friendmodel.cpp.i"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Chat/src/server/friendmodel.cpp > CMakeFiles/ChatServer.dir/friendmodel.cpp.i

src/server/CMakeFiles/ChatServer.dir/friendmodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/friendmodel.cpp.s"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Chat/src/server/friendmodel.cpp -o CMakeFiles/ChatServer.dir/friendmodel.cpp.s

src/server/CMakeFiles/ChatServer.dir/main.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/main.cpp.o: ../src/server/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/ChatServer.dir/main.cpp.o"
	cd /root/Chat/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/main.cpp.o -c /root/Chat/src/server/main.cpp

src/server/CMakeFiles/ChatServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/main.cpp.i"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Chat/src/server/main.cpp > CMakeFiles/ChatServer.dir/main.cpp.i

src/server/CMakeFiles/ChatServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/main.cpp.s"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Chat/src/server/main.cpp -o CMakeFiles/ChatServer.dir/main.cpp.s

src/server/CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.o: ../src/server/offlinemessagemodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.o"
	cd /root/Chat/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.o -c /root/Chat/src/server/offlinemessagemodel.cpp

src/server/CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.i"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Chat/src/server/offlinemessagemodel.cpp > CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.i

src/server/CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.s"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Chat/src/server/offlinemessagemodel.cpp -o CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.s

src/server/CMakeFiles/ChatServer.dir/usermodel.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/usermodel.cpp.o: ../src/server/usermodel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/server/CMakeFiles/ChatServer.dir/usermodel.cpp.o"
	cd /root/Chat/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/usermodel.cpp.o -c /root/Chat/src/server/usermodel.cpp

src/server/CMakeFiles/ChatServer.dir/usermodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/usermodel.cpp.i"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Chat/src/server/usermodel.cpp > CMakeFiles/ChatServer.dir/usermodel.cpp.i

src/server/CMakeFiles/ChatServer.dir/usermodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/usermodel.cpp.s"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Chat/src/server/usermodel.cpp -o CMakeFiles/ChatServer.dir/usermodel.cpp.s

src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o: src/server/CMakeFiles/ChatServer.dir/flags.make
src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o: ../src/server/db/db.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o"
	cd /root/Chat/build/src/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatServer.dir/db/db.cpp.o -c /root/Chat/src/server/db/db.cpp

src/server/CMakeFiles/ChatServer.dir/db/db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatServer.dir/db/db.cpp.i"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Chat/src/server/db/db.cpp > CMakeFiles/ChatServer.dir/db/db.cpp.i

src/server/CMakeFiles/ChatServer.dir/db/db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatServer.dir/db/db.cpp.s"
	cd /root/Chat/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Chat/src/server/db/db.cpp -o CMakeFiles/ChatServer.dir/db/db.cpp.s

# Object files for target ChatServer
ChatServer_OBJECTS = \
"CMakeFiles/ChatServer.dir/ChatServer.cpp.o" \
"CMakeFiles/ChatServer.dir/ChatService.cpp.o" \
"CMakeFiles/ChatServer.dir/friendmodel.cpp.o" \
"CMakeFiles/ChatServer.dir/main.cpp.o" \
"CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.o" \
"CMakeFiles/ChatServer.dir/usermodel.cpp.o" \
"CMakeFiles/ChatServer.dir/db/db.cpp.o"

# External object files for target ChatServer
ChatServer_EXTERNAL_OBJECTS =

../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/ChatServer.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/ChatService.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/friendmodel.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/main.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/offlinemessagemodel.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/usermodel.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/db/db.cpp.o
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/build.make
../bin/ChatServer: src/server/CMakeFiles/ChatServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable ../../../bin/ChatServer"
	cd /root/Chat/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/ChatServer.dir/build: ../bin/ChatServer

.PHONY : src/server/CMakeFiles/ChatServer.dir/build

src/server/CMakeFiles/ChatServer.dir/clean:
	cd /root/Chat/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/ChatServer.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/ChatServer.dir/clean

src/server/CMakeFiles/ChatServer.dir/depend:
	cd /root/Chat/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Chat /root/Chat/src/server /root/Chat/build /root/Chat/build/src/server /root/Chat/build/src/server/CMakeFiles/ChatServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/ChatServer.dir/depend
