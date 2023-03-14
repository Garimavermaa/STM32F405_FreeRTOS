################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../thirdparty/freeRTOS/croutine.c \
../thirdparty/freeRTOS/event_groups.c \
../thirdparty/freeRTOS/list.c \
../thirdparty/freeRTOS/queue.c \
../thirdparty/freeRTOS/stream_buffer.c \
../thirdparty/freeRTOS/tasks.c \
../thirdparty/freeRTOS/timers.c 

OBJS += \
./thirdparty/freeRTOS/croutine.o \
./thirdparty/freeRTOS/event_groups.o \
./thirdparty/freeRTOS/list.o \
./thirdparty/freeRTOS/queue.o \
./thirdparty/freeRTOS/stream_buffer.o \
./thirdparty/freeRTOS/tasks.o \
./thirdparty/freeRTOS/timers.o 

C_DEPS += \
./thirdparty/freeRTOS/croutine.d \
./thirdparty/freeRTOS/event_groups.d \
./thirdparty/freeRTOS/list.d \
./thirdparty/freeRTOS/queue.d \
./thirdparty/freeRTOS/stream_buffer.d \
./thirdparty/freeRTOS/tasks.d \
./thirdparty/freeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
thirdparty/freeRTOS/%.o thirdparty/freeRTOS/%.su: ../thirdparty/freeRTOS/%.c thirdparty/freeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I"C:/Users/garim/Desktop/freertos/001TASK2/thirdparty/freeRTOS" -I"C:/Users/garim/Desktop/freertos/001TASK2/thirdparty/freeRTOS/include" -I"C:/Users/garim/Desktop/freertos/001TASK2/thirdparty/freeRTOS/portable/GCC/ARM_CM4F" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-thirdparty-2f-freeRTOS

clean-thirdparty-2f-freeRTOS:
	-$(RM) ./thirdparty/freeRTOS/croutine.d ./thirdparty/freeRTOS/croutine.o ./thirdparty/freeRTOS/croutine.su ./thirdparty/freeRTOS/event_groups.d ./thirdparty/freeRTOS/event_groups.o ./thirdparty/freeRTOS/event_groups.su ./thirdparty/freeRTOS/list.d ./thirdparty/freeRTOS/list.o ./thirdparty/freeRTOS/list.su ./thirdparty/freeRTOS/queue.d ./thirdparty/freeRTOS/queue.o ./thirdparty/freeRTOS/queue.su ./thirdparty/freeRTOS/stream_buffer.d ./thirdparty/freeRTOS/stream_buffer.o ./thirdparty/freeRTOS/stream_buffer.su ./thirdparty/freeRTOS/tasks.d ./thirdparty/freeRTOS/tasks.o ./thirdparty/freeRTOS/tasks.su ./thirdparty/freeRTOS/timers.d ./thirdparty/freeRTOS/timers.o ./thirdparty/freeRTOS/timers.su

.PHONY: clean-thirdparty-2f-freeRTOS

