################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
thirdparty/freeRTOS/portable/GCC/ARM_CM4F/%.o thirdparty/freeRTOS/portable/GCC/ARM_CM4F/%.su: ../thirdparty/freeRTOS/portable/GCC/ARM_CM4F/%.c thirdparty/freeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS" -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS/include" -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS/portable/GCC/ARM_CM4F" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-thirdparty-2f-freeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-thirdparty-2f-freeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.d ./thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.o ./thirdparty/freeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-thirdparty-2f-freeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

