################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/train/example_generator.cpp \
../src/train/pretrain.cpp \
../src/train/tracker_trainer.cpp \
../src/train/train.cpp 

OBJS += \
./src/train/example_generator.o \
./src/train/pretrain.o \
./src/train/tracker_trainer.o \
./src/train/train.o 

CPP_DEPS += \
./src/train/example_generator.d \
./src/train/pretrain.d \
./src/train/tracker_trainer.d \
./src/train/train.d 


# Each subdirectory must supply rules for building sources it contributes
src/train/%.o: ../src/train/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


