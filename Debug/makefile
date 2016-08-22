################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/visualizer/subdir.mk
-include src/train/subdir.mk
-include src/tracker/subdir.mk
-include src/test/subdir.mk
-include src/network/subdir.mk
-include src/native/subdir.mk
-include src/loader/subdir.mk
-include src/helper/subdir.mk
-include scripts/Fscore_v1.0/polygonClipper/subdir.mk
-include build/CMakeFiles/train.dir/src/train/subdir.mk
-include build/CMakeFiles/test_tracker_vot.dir/src/test/subdir.mk
-include build/CMakeFiles/test_tracker_alov.dir/src/test/subdir.mk
-include build/CMakeFiles/show_tracker_vot.dir/src/visualizer/subdir.mk
-include build/CMakeFiles/show_tracker_alov.dir/src/visualizer/subdir.mk
-include build/CMakeFiles/show_imagenet.dir/src/visualizer/subdir.mk
-include build/CMakeFiles/show_alov.dir/src/visualizer/subdir.mk
-include build/CMakeFiles/save_videos_vot.dir/src/test/subdir.mk
-include build/CMakeFiles/GOTURN.dir/src/train/subdir.mk
-include build/CMakeFiles/GOTURN.dir/src/tracker/subdir.mk
-include build/CMakeFiles/GOTURN.dir/src/network/subdir.mk
-include build/CMakeFiles/GOTURN.dir/src/native/subdir.mk
-include build/CMakeFiles/GOTURN.dir/src/loader/subdir.mk
-include build/CMakeFiles/GOTURN.dir/src/helper/subdir.mk
-include build/CMakeFiles/2.8.12.2/CompilerIdCXX/subdir.mk
-include build/CMakeFiles/2.8.12.2/CompilerIdC/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: goturn_remember

# Tool invocations
goturn_remember: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	g++  -o "goturn_remember" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C++_DEPS)$(C_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(CXX_DEPS)$(C_UPPER_DEPS) goturn_remember
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
