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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sraghave/drivers/opencl/compiler/llvm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sraghave/drivers/opencl/compiler/llvm/build

# Include any dependencies generated for this target.
include tools/llvm-link/CMakeFiles/llvm-link.dir/depend.make

# Include the progress variables for this target.
include tools/llvm-link/CMakeFiles/llvm-link.dir/progress.make

# Include the compile flags for this target's objects.
include tools/llvm-link/CMakeFiles/llvm-link.dir/flags.make

tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o: tools/llvm-link/CMakeFiles/llvm-link.dir/flags.make
tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o: ../tools/llvm-link/bclinker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sraghave/drivers/opencl/compiler/llvm/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/llvm-link.dir/bclinker.cpp.o -c /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/bclinker.cpp

tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llvm-link.dir/bclinker.cpp.i"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/bclinker.cpp > CMakeFiles/llvm-link.dir/bclinker.cpp.i

tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llvm-link.dir/bclinker.cpp.s"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/bclinker.cpp -o CMakeFiles/llvm-link.dir/bclinker.cpp.s

tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o.requires:
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o.requires

tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o.provides: tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o.requires
	$(MAKE) -f tools/llvm-link/CMakeFiles/llvm-link.dir/build.make tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o.provides.build
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o.provides

tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o.provides.build: tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o

tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o: tools/llvm-link/CMakeFiles/llvm-link.dir/flags.make
tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o: ../tools/llvm-link/AMDFixUpModule.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sraghave/drivers/opencl/compiler/llvm/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o -c /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/AMDFixUpModule.cpp

tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.i"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/AMDFixUpModule.cpp > CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.i

tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.s"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/AMDFixUpModule.cpp -o CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.s

tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o.requires:
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o.requires

tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o.provides: tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o.requires
	$(MAKE) -f tools/llvm-link/CMakeFiles/llvm-link.dir/build.make tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o.provides.build
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o.provides

tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o.provides.build: tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o

tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o: tools/llvm-link/CMakeFiles/llvm-link.dir/flags.make
tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o: ../tools/llvm-link/llvm-link.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sraghave/drivers/opencl/compiler/llvm/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/llvm-link.dir/llvm-link.cpp.o -c /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/llvm-link.cpp

tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llvm-link.dir/llvm-link.cpp.i"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/llvm-link.cpp > CMakeFiles/llvm-link.dir/llvm-link.cpp.i

tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llvm-link.dir/llvm-link.cpp.s"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link/llvm-link.cpp -o CMakeFiles/llvm-link.dir/llvm-link.cpp.s

tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o.requires:
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o.requires

tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o.provides: tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o.requires
	$(MAKE) -f tools/llvm-link/CMakeFiles/llvm-link.dir/build.make tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o.provides.build
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o.provides

tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o.provides.build: tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o

# Object files for target llvm-link
llvm__link_OBJECTS = \
"CMakeFiles/llvm-link.dir/bclinker.cpp.o" \
"CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o" \
"CMakeFiles/llvm-link.dir/llvm-link.cpp.o"

# External object files for target llvm-link
llvm__link_EXTERNAL_OBJECTS =

bin/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o
bin/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o
bin/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o
bin/llvm-link: lib/libLLVMLinker.a
bin/llvm-link: lib/libLLVMBitWriter.a
bin/llvm-link: lib/libLLVMAsmParser.a
bin/llvm-link: lib/libLLVMipo.a
bin/llvm-link: lib/libLLVMArchive.a
bin/llvm-link: lib/libLLVMScalarOpts.a
bin/llvm-link: lib/libLLVMVectorize.a
bin/llvm-link: lib/libLLVMBitReader.a
bin/llvm-link: lib/libLLVMInstCombine.a
bin/llvm-link: lib/libLLVMTransformUtils.a
bin/llvm-link: lib/libLLVMipa.a
bin/llvm-link: lib/libLLVMAnalysis.a
bin/llvm-link: lib/libLLVMTarget.a
bin/llvm-link: lib/libLLVMCore.a
bin/llvm-link: lib/libLLVMMC.a
bin/llvm-link: lib/libLLVMObject.a
bin/llvm-link: lib/libLLVMSupport.a
bin/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/build.make
bin/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/llvm-link"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llvm-link.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/llvm-link/CMakeFiles/llvm-link.dir/build: bin/llvm-link
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/build

# Object files for target llvm-link
llvm__link_OBJECTS = \
"CMakeFiles/llvm-link.dir/bclinker.cpp.o" \
"CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o" \
"CMakeFiles/llvm-link.dir/llvm-link.cpp.o"

# External object files for target llvm-link
llvm__link_EXTERNAL_OBJECTS =

tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMLinker.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMBitWriter.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMAsmParser.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMipo.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMArchive.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMScalarOpts.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMVectorize.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMBitReader.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMInstCombine.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMTransformUtils.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMipa.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMAnalysis.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMTarget.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMCore.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMMC.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMObject.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: lib/libLLVMSupport.a
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/build.make
tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link: tools/llvm-link/CMakeFiles/llvm-link.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/llvm-link"
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llvm-link.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
tools/llvm-link/CMakeFiles/llvm-link.dir/preinstall: tools/llvm-link/CMakeFiles/CMakeRelink.dir/llvm-link
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/preinstall

tools/llvm-link/CMakeFiles/llvm-link.dir/requires: tools/llvm-link/CMakeFiles/llvm-link.dir/bclinker.cpp.o.requires
tools/llvm-link/CMakeFiles/llvm-link.dir/requires: tools/llvm-link/CMakeFiles/llvm-link.dir/AMDFixUpModule.cpp.o.requires
tools/llvm-link/CMakeFiles/llvm-link.dir/requires: tools/llvm-link/CMakeFiles/llvm-link.dir/llvm-link.cpp.o.requires
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/requires

tools/llvm-link/CMakeFiles/llvm-link.dir/clean:
	cd /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link && $(CMAKE_COMMAND) -P CMakeFiles/llvm-link.dir/cmake_clean.cmake
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/clean

tools/llvm-link/CMakeFiles/llvm-link.dir/depend:
	cd /home/sraghave/drivers/opencl/compiler/llvm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sraghave/drivers/opencl/compiler/llvm /home/sraghave/drivers/opencl/compiler/llvm/tools/llvm-link /home/sraghave/drivers/opencl/compiler/llvm/build /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link /home/sraghave/drivers/opencl/compiler/llvm/build/tools/llvm-link/CMakeFiles/llvm-link.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/llvm-link/CMakeFiles/llvm-link.dir/depend
