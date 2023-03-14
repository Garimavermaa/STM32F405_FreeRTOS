################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Thirdparty/freeRTOS/croutine.c \
../Thirdparty/freeRTOS/event_groups.c \
../Thirdparty/freeRTOS/list.c \
../Thirdparty/freeRTOS/queue.c \
../Thirdparty/freeRTOS/stream_buffer.c \
../Thirdparty/freeRTOS/tasks.c \
../Thirdparty/freeRTOS/timers.c 

OBJS += \
./Thirdparty/freeRTOS/croutine.o \
./Thirdparty/freeRTOS/event_groups.o \
./Thirdparty/freeRTOS/list.o \
./Thirdparty/freeRTOS/queue.o \
./Thirdparty/freeRTOS/stream_buffer.o \
./Thirdparty/freeRTOS/tasks.o \
./Thirdparty/freeRTOS/timers.o 

C_DEPS += \
./Thirdparty/freeRTOS/croutine.d \
./Thirdparty/freeRTOS/event_groups.d \
./Thirdparty/freeRTOS/list.d \
./Thirdparty/freeRTOS/queue.d \
./Thirdparty/freeRTOS/stream_buffer.d \
./Thirdparty/freeRTOS/tasks.d \
./Thirdparty/freeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Thirdparty/freeRTOS/%.o Thirdparty/freeRTOS/%.su Thirdparty/freeRTOS/%.cyclo: ../Thirdparty/freeRTOS/%.c Thirdparty/freeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/vkish/Desktop/freeRTOS_PROJECT/MUTEX_UART/Thirdparty/freeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/vkish/Desktop/freeRTOS_PROJECT/MUTEX_UART/Thirdparty/freeRTOS/include" -I"C:/Users/vkish/Desktop/freeRTOS_PROJECT/MUTEX_UART/Thirdparty/freeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Thirdparty-2f-freeRTOS

clean-Thirdparty-2f-freeRTOS:
	-$(RM) ./Thirdparty/freeRTOS/croutine.cyclo ./Thirdparty/freeRTOS/croutine.d ./Thirdparty/freeRTOS/croutine.o ./Thirdparty/freeRTOS/croutine.su ./Thirdparty/freeRTOS/event_groups.cyclo ./Thirdparty/freeRTOS/event_groups.d ./Thirdparty/freeRTOS/event_groups.o ./Thirdparty/freeRTOS/event_groups.su ./Thirdparty/freeRTOS/list.cyclo ./Thirdparty/freeRTOS/list.d ./Thirdparty/freeRTOS/list.o ./Thirdparty/freeRTOS/list.su ./Thirdparty/freeRTOS/queue.cyclo ./Thirdparty/freeRTOS/queue.d ./Thirdparty/freeRTOS/queue.o ./Thirdparty/freeRTOS/queue.su ./Thirdparty/freeRTOS/stream_buffer.cyclo ./Thirdparty/freeRTOS/stream_buffer.d ./Thirdparty/freeRTOS/stream_buffer.o ./Thirdparty/freeRTOS/stream_buffer.su ./Thirdparty/freeRTOS/tasks.cyclo ./Thirdparty/freeRTOS/tasks.d ./Thirdparty/freeRTOS/tasks.o ./Thirdparty/freeRTOS/tasks.su ./Thirdparty/freeRTOS/timers.cyclo ./Thirdparty/freeRTOS/timers.d ./Thirdparty/freeRTOS/timers.o ./Thirdparty/freeRTOS/timers.su

.PHONY: clean-Thirdparty-2f-freeRTOS

