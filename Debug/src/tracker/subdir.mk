################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tracker/tracker.cpp \
../src/tracker/tracker_manager.cpp 

OBJS += \
./src/tracker/tracker.o \
./src/tracker/tracker_manager.o 

CPP_DEPS += \
./src/tracker/tracker.d \
./src/tracker/tracker_manager.d 


# Each subdirectory must supply rules for building sources it contributes
src/tracker/%.o: ../src/tracker/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


