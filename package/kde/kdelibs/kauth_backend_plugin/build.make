# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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
CMAKE_COMMAND = /home/yeek/kdedev/output/host/usr/bin/cmake

# The command to remove a file.
RM = /home/yeek/kdedev/output/host/usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /home/yeek/kdedev/output/host/usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yeek/kdedev/output/build/kdelibs-v4.7.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build

# Include any dependencies generated for this target.
include kdecore/CMakeFiles/kauth_backend_plugin.dir/depend.make

# Include the progress variables for this target.
include kdecore/CMakeFiles/kauth_backend_plugin.dir/progress.make

# Include the compile flags for this target's objects.
include kdecore/CMakeFiles/kauth_backend_plugin.dir/flags.make

kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o: kdecore/CMakeFiles/kauth_backend_plugin.dir/flags.make
kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o: kdecore/kauth_backend_plugin_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o -c /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore/kauth_backend_plugin_automoc.cpp

kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.i"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore/kauth_backend_plugin_automoc.cpp > CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.i

kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.s"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore/kauth_backend_plugin_automoc.cpp -o CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.s

kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o.requires:
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o.requires

kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o.provides: kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o.requires
	$(MAKE) -f kdecore/CMakeFiles/kauth_backend_plugin.dir/build.make kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o.provides.build
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o.provides

kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o.provides.build: kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o: kdecore/CMakeFiles/kauth_backend_plugin.dir/flags.make
kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o: ../kdecore/auth/backends/polkit-1/Polkit1Backend.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o -c /home/yeek/kdedev/output/build/kdelibs-v4.7.1/kdecore/auth/backends/polkit-1/Polkit1Backend.cpp

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.i"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yeek/kdedev/output/build/kdelibs-v4.7.1/kdecore/auth/backends/polkit-1/Polkit1Backend.cpp > CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.i

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.s"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yeek/kdedev/output/build/kdelibs-v4.7.1/kdecore/auth/backends/polkit-1/Polkit1Backend.cpp -o CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.s

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o.requires:
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o.requires

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o.provides: kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o.requires
	$(MAKE) -f kdecore/CMakeFiles/kauth_backend_plugin.dir/build.make kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o.provides.build
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o.provides

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o.provides.build: kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o: kdecore/CMakeFiles/kauth_backend_plugin.dir/flags.make
kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o: ../kdecore/auth/AuthBackend.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o -c /home/yeek/kdedev/output/build/kdelibs-v4.7.1/kdecore/auth/AuthBackend.cpp

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.i"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yeek/kdedev/output/build/kdelibs-v4.7.1/kdecore/auth/AuthBackend.cpp > CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.i

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.s"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && /home/yeek/kdedev/output/host/usr/bin/arm-none-linux-gnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yeek/kdedev/output/build/kdelibs-v4.7.1/kdecore/auth/AuthBackend.cpp -o CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.s

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o.requires:
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o.requires

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o.provides: kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o.requires
	$(MAKE) -f kdecore/CMakeFiles/kauth_backend_plugin.dir/build.make kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o.provides.build
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o.provides

kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o.provides.build: kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o

# Object files for target kauth_backend_plugin
kauth_backend_plugin_OBJECTS = \
"CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o" \
"CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o" \
"CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o"

# External object files for target kauth_backend_plugin
kauth_backend_plugin_EXTERNAL_OBJECTS =

lib/kauth_backend_plugin.so: kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o
lib/kauth_backend_plugin.so: kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o
lib/kauth_backend_plugin.so: kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o
lib/kauth_backend_plugin.so: /home/yeek/kdedev/output/host/usr/arm-unknown-linux-gnueabi/sysroot/usr/lib/libpolkit-qt-core-1.so
lib/kauth_backend_plugin.so: /home/yeek/kdedev/output/host/usr/arm-unknown-linux-gnueabi/sysroot/usr/lib/libQtCore.so
lib/kauth_backend_plugin.so: /home/yeek/kdedev/output/host/usr/arm-unknown-linux-gnueabi/sysroot/usr/lib/libQtDBus.so
lib/kauth_backend_plugin.so: /home/yeek/kdedev/output/host/usr/arm-unknown-linux-gnueabi/sysroot/usr/lib/libQtGui.so
lib/kauth_backend_plugin.so: lib/libkdecore.so.5.7.0
lib/kauth_backend_plugin.so: /home/yeek/kdedev/output/host/usr/arm-unknown-linux-gnueabi/sysroot/usr/lib/libQtGui.so
lib/kauth_backend_plugin.so: /home/yeek/kdedev/output/host/usr/arm-unknown-linux-gnueabi/sysroot/usr/lib/libQtCore.so
lib/kauth_backend_plugin.so: /home/yeek/kdedev/output/host/usr/arm-unknown-linux-gnueabi/sysroot/usr/lib/libQtDBus.so
lib/kauth_backend_plugin.so: kdecore/CMakeFiles/kauth_backend_plugin.dir/build.make
lib/kauth_backend_plugin.so: kdecore/CMakeFiles/kauth_backend_plugin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../lib/kauth_backend_plugin.so"
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kauth_backend_plugin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
kdecore/CMakeFiles/kauth_backend_plugin.dir/build: lib/kauth_backend_plugin.so
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/build

kdecore/CMakeFiles/kauth_backend_plugin.dir/requires: kdecore/CMakeFiles/kauth_backend_plugin.dir/kauth_backend_plugin_automoc.o.requires
kdecore/CMakeFiles/kauth_backend_plugin.dir/requires: kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/backends/polkit-1/Polkit1Backend.o.requires
kdecore/CMakeFiles/kauth_backend_plugin.dir/requires: kdecore/CMakeFiles/kauth_backend_plugin.dir/auth/AuthBackend.o.requires
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/requires

kdecore/CMakeFiles/kauth_backend_plugin.dir/clean:
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore && $(CMAKE_COMMAND) -P CMakeFiles/kauth_backend_plugin.dir/cmake_clean.cmake
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/clean

kdecore/CMakeFiles/kauth_backend_plugin.dir/depend:
	cd /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yeek/kdedev/output/build/kdelibs-v4.7.1 /home/yeek/kdedev/output/build/kdelibs-v4.7.1/kdecore /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore /home/yeek/kdedev/output/build/kdelibs-v4.7.1/build/kdecore/CMakeFiles/kauth_backend_plugin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : kdecore/CMakeFiles/kauth_backend_plugin.dir/depend
