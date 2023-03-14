################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/%.o Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/%.su: ../Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/%.c Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Thirdyparty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-Thirdyparty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/port.o ./Thirdyparty/FreeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-Thirdyparty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

