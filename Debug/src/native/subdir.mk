################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/native/ncc.cpp \
../src/native/static.cpp \
../src/native/vot.cpp 

C_SRCS += \
../src/native/static.c 

OBJS += \
./src/native/ncc.o \
./src/native/static.o \
./src/native/vot.o 

C_DEPS += \
./src/native/static.d 

CPP_DEPS += \
./src/native/ncc.d \
./src/native/static.d \
./src/native/vot.d 


# Each subdirectory must supply rules for building sources it contributes
src/native/%.o: ../src/native/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/native/%.o: ../src/native/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


