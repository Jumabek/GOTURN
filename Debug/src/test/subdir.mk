################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/test/save_videos_vot.cpp \
../src/test/test_tracker_alov.cpp \
../src/test/test_tracker_alov_by_memorizing.cpp \
../src/test/test_tracker_vot.cpp 

OBJS += \
./src/test/save_videos_vot.o \
./src/test/test_tracker_alov.o \
./src/test/test_tracker_alov_by_memorizing.o \
./src/test/test_tracker_vot.o 

CPP_DEPS += \
./src/test/save_videos_vot.d \
./src/test/test_tracker_alov.d \
./src/test/test_tracker_alov_by_memorizing.d \
./src/test/test_tracker_vot.d 


# Each subdirectory must supply rules for building sources it contributes
src/test/%.o: ../src/test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


