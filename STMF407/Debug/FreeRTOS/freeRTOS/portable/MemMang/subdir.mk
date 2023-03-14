################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS/freeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./FreeRTOS/freeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./FreeRTOS/freeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/freeRTOS/portable/MemMang/%.o FreeRTOS/freeRTOS/portable/MemMang/%.su: ../FreeRTOS/freeRTOS/portable/MemMang/%.c FreeRTOS/freeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS/include" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-FreeRTOS-2f-freeRTOS-2f-portable-2f-MemMang

clean-FreeRTOS-2f-freeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./FreeRTOS/freeRTOS/portable/MemMang/heap_4.d ./FreeRTOS/freeRTOS/portable/MemMang/heap_4.o ./FreeRTOS/freeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-FreeRTOS-2f-freeRTOS-2f-portable-2f-MemMang

