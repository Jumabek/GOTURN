################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/loader/loader_alov.cpp \
../src/loader/loader_imagenet_det.cpp \
../src/loader/loader_vot.cpp \
../src/loader/video.cpp \
../src/loader/video_loader.cpp 

OBJS += \
./src/loader/loader_alov.o \
./src/loader/loader_imagenet_det.o \
./src/loader/loader_vot.o \
./src/loader/video.o \
./src/loader/video_loader.o 

CPP_DEPS += \
./src/loader/loader_alov.d \
./src/loader/loader_imagenet_det.d \
./src/loader/loader_vot.d \
./src/loader/video.d \
./src/loader/video_loader.d 


# Each subdirectory must supply rules for building sources it contributes
src/loader/%.o: ../src/loader/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


