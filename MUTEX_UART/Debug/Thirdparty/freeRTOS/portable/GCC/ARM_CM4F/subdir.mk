################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/%.o Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/%.su: ../Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/%.c Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/garim/Desktop/freertos/MUTEX_UART/Thirdparty/freeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/garim/Desktop/freertos/MUTEX_UART/Thirdparty/freeRTOS/include" -I"C:/Users/garim/Desktop/freertos/MUTEX_UART/Thirdparty/freeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Thirdparty-2f-freeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-Thirdparty-2f-freeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.d ./Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.o ./Thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-Thirdparty-2f-freeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

