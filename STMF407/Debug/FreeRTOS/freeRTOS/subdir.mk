################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS/freeRTOS/croutine.c \
../FreeRTOS/freeRTOS/event_groups.c \
../FreeRTOS/freeRTOS/list.c \
../FreeRTOS/freeRTOS/queue.c \
../FreeRTOS/freeRTOS/stream_buffer.c \
../FreeRTOS/freeRTOS/tasks.c \
../FreeRTOS/freeRTOS/timers.c 

OBJS += \
./FreeRTOS/freeRTOS/croutine.o \
./FreeRTOS/freeRTOS/event_groups.o \
./FreeRTOS/freeRTOS/list.o \
./FreeRTOS/freeRTOS/queue.o \
./FreeRTOS/freeRTOS/stream_buffer.o \
./FreeRTOS/freeRTOS/tasks.o \
./FreeRTOS/freeRTOS/timers.o 

C_DEPS += \
./FreeRTOS/freeRTOS/croutine.d \
./FreeRTOS/freeRTOS/event_groups.d \
./FreeRTOS/freeRTOS/list.d \
./FreeRTOS/freeRTOS/queue.d \
./FreeRTOS/freeRTOS/stream_buffer.d \
./FreeRTOS/freeRTOS/tasks.d \
./FreeRTOS/freeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/freeRTOS/%.o FreeRTOS/freeRTOS/%.su: ../FreeRTOS/freeRTOS/%.c FreeRTOS/freeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS/include" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2f-freeRTOS

clean-FreeRTOS-2f-freeRTOS:
	-$(RM) ./FreeRTOS/freeRTOS/croutine.d ./FreeRTOS/freeRTOS/croutine.o ./FreeRTOS/freeRTOS/croutine.su ./FreeRTOS/freeRTOS/event_groups.d ./FreeRTOS/freeRTOS/event_groups.o ./FreeRTOS/freeRTOS/event_groups.su ./FreeRTOS/freeRTOS/list.d ./FreeRTOS/freeRTOS/list.o ./FreeRTOS/freeRTOS/list.su ./FreeRTOS/freeRTOS/queue.d ./FreeRTOS/freeRTOS/queue.o ./FreeRTOS/freeRTOS/queue.su ./FreeRTOS/freeRTOS/stream_buffer.d ./FreeRTOS/freeRTOS/stream_buffer.o ./FreeRTOS/freeRTOS/stream_buffer.su ./FreeRTOS/freeRTOS/tasks.d ./FreeRTOS/freeRTOS/tasks.o ./FreeRTOS/freeRTOS/tasks.su ./FreeRTOS/freeRTOS/timers.d ./FreeRTOS/freeRTOS/timers.o ./FreeRTOS/freeRTOS/timers.su

.PHONY: clean-FreeRTOS-2f-freeRTOS

