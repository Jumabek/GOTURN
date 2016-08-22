################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/visualizer/show_alov.cpp \
../src/visualizer/show_imagenet.cpp \
../src/visualizer/show_tracker_alov.cpp \
../src/visualizer/show_tracker_vot.cpp 

OBJS += \
./src/visualizer/show_alov.o \
./src/visualizer/show_imagenet.o \
./src/visualizer/show_tracker_alov.o \
./src/visualizer/show_tracker_vot.o 

CPP_DEPS += \
./src/visualizer/show_alov.d \
./src/visualizer/show_imagenet.d \
./src/visualizer/show_tracker_alov.d \
./src/visualizer/show_tracker_vot.d 


# Each subdirectory must supply rules for building sources it contributes
src/visualizer/%.o: ../src/visualizer/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


