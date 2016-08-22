################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../scripts/Fscore_v1.0/polygonClipper/gpc.c \
../scripts/Fscore_v1.0/polygonClipper/gpc_mexfile.c 

OBJS += \
./scripts/Fscore_v1.0/polygonClipper/gpc.o \
./scripts/Fscore_v1.0/polygonClipper/gpc_mexfile.o 

C_DEPS += \
./scripts/Fscore_v1.0/polygonClipper/gpc.d \
./scripts/Fscore_v1.0/polygonClipper/gpc_mexfile.d 


# Each subdirectory must supply rules for building sources it contributes
scripts/Fscore_v1.0/polygonClipper/%.o: ../scripts/Fscore_v1.0/polygonClipper/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


