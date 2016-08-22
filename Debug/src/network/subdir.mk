################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/network/regressor.cpp \
../src/network/regressor_base.cpp \
../src/network/regressor_train.cpp \
../src/network/regressor_train_base.cpp 

OBJS += \
./src/network/regressor.o \
./src/network/regressor_base.o \
./src/network/regressor_train.o \
./src/network/regressor_train_base.o 

CPP_DEPS += \
./src/network/regressor.d \
./src/network/regressor_base.d \
./src/network/regressor_train.d \
./src/network/regressor_train_base.d 


# Each subdirectory must supply rules for building sources it contributes
src/network/%.o: ../src/network/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


