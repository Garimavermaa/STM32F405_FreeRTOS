################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../thirdparty/SAGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c 

OBJS += \
./thirdparty/SAGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o 

C_DEPS += \
./thirdparty/SAGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d 


# Each subdirectory must supply rules for building sources it contributes
thirdparty/SAGGER/SEGGER/Syscalls/%.o thirdparty/SAGGER/SEGGER/Syscalls/%.su: ../thirdparty/SAGGER/SEGGER/Syscalls/%.c thirdparty/SAGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS" -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS/include" -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS/portable/GCC/ARM_CM4F" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-thirdparty-2f-SAGGER-2f-SEGGER-2f-Syscalls

clean-thirdparty-2f-SAGGER-2f-SEGGER-2f-Syscalls:
	-$(RM) ./thirdparty/SAGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d ./thirdparty/SAGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o ./thirdparty/SAGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.su

.PHONY: clean-thirdparty-2f-SAGGER-2f-SEGGER-2f-Syscalls

