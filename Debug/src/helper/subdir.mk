################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/helper/bounding_box.cpp \
../src/helper/helper.cpp \
../src/helper/high_res_timer.cpp \
../src/helper/image_proc.cpp 

OBJS += \
./src/helper/bounding_box.o \
./src/helper/helper.o \
./src/helper/high_res_timer.o \
./src/helper/image_proc.o 

CPP_DEPS += \
./src/helper/bounding_box.d \
./src/helper/helper.d \
./src/helper/high_res_timer.d \
./src/helper/image_proc.d 


# Each subdirectory must supply rules for building sources it contributes
src/helper/%.o: ../src/helper/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


