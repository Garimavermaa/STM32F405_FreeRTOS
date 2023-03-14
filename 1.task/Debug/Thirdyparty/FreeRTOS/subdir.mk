################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Thirdyparty/FreeRTOS/croutine.c \
../Thirdyparty/FreeRTOS/event_groups.c \
../Thirdyparty/FreeRTOS/list.c \
../Thirdyparty/FreeRTOS/queue.c \
../Thirdyparty/FreeRTOS/stream_buffer.c \
../Thirdyparty/FreeRTOS/tasks.c \
../Thirdyparty/FreeRTOS/timers.c 

OBJS += \
./Thirdyparty/FreeRTOS/croutine.o \
./Thirdyparty/FreeRTOS/event_groups.o \
./Thirdyparty/FreeRTOS/list.o \
./Thirdyparty/FreeRTOS/queue.o \
./Thirdyparty/FreeRTOS/stream_buffer.o \
./Thirdyparty/FreeRTOS/tasks.o \
./Thirdyparty/FreeRTOS/timers.o 

C_DEPS += \
./Thirdyparty/FreeRTOS/croutine.d \
./Thirdyparty/FreeRTOS/event_groups.d \
./Thirdyparty/FreeRTOS/list.d \
./Thirdyparty/FreeRTOS/queue.d \
./Thirdyparty/FreeRTOS/stream_buffer.d \
./Thirdyparty/FreeRTOS/tasks.d \
./Thirdyparty/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Thirdyparty/FreeRTOS/%.o Thirdyparty/FreeRTOS/%.su: ../Thirdyparty/FreeRTOS/%.c Thirdyparty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Thirdyparty-2f-FreeRTOS

clean-Thirdyparty-2f-FreeRTOS:
	-$(RM) ./Thirdyparty/FreeRTOS/croutine.d ./Thirdyparty/FreeRTOS/croutine.o ./Thirdyparty/FreeRTOS/croutine.su ./Thirdyparty/FreeRTOS/event_groups.d ./Thirdyparty/FreeRTOS/event_groups.o ./Thirdyparty/FreeRTOS/event_groups.su ./Thirdyparty/FreeRTOS/list.d ./Thirdyparty/FreeRTOS/list.o ./Thirdyparty/FreeRTOS/list.su ./Thirdyparty/FreeRTOS/queue.d ./Thirdyparty/FreeRTOS/queue.o ./Thirdyparty/FreeRTOS/queue.su ./Thirdyparty/FreeRTOS/stream_buffer.d ./Thirdyparty/FreeRTOS/stream_buffer.o ./Thirdyparty/FreeRTOS/stream_buffer.su ./Thirdyparty/FreeRTOS/tasks.d ./Thirdyparty/FreeRTOS/tasks.o ./Thirdyparty/FreeRTOS/tasks.su ./Thirdyparty/FreeRTOS/timers.d ./Thirdyparty/FreeRTOS/timers.o ./Thirdyparty/FreeRTOS/timers.su

.PHONY: clean-Thirdyparty-2f-FreeRTOS

