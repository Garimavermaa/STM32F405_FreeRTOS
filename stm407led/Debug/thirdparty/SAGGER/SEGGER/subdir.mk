################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../thirdparty/SAGGER/SEGGER/SEGGER_RTT.c \
../thirdparty/SAGGER/SEGGER/SEGGER_RTT_printf.c \
../thirdparty/SAGGER/SEGGER/SEGGER_SYSVIEW.c 

S_UPPER_SRCS += \
../thirdparty/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./thirdparty/SAGGER/SEGGER/SEGGER_RTT.o \
./thirdparty/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o \
./thirdparty/SAGGER/SEGGER/SEGGER_RTT_printf.o \
./thirdparty/SAGGER/SEGGER/SEGGER_SYSVIEW.o 

S_UPPER_DEPS += \
./thirdparty/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./thirdparty/SAGGER/SEGGER/SEGGER_RTT.d \
./thirdparty/SAGGER/SEGGER/SEGGER_RTT_printf.d \
./thirdparty/SAGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
thirdparty/SAGGER/SEGGER/%.o thirdparty/SAGGER/SEGGER/%.su: ../thirdparty/SAGGER/SEGGER/%.c thirdparty/SAGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS" -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS/include" -I"C:/Users/garim/Desktop/freertos/stm407led/thirdparty/freeRTOS/portable/GCC/ARM_CM4F" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
thirdparty/SAGGER/SEGGER/%.o: ../thirdparty/SAGGER/SEGGER/%.S thirdparty/SAGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-thirdparty-2f-SAGGER-2f-SEGGER

clean-thirdparty-2f-SAGGER-2f-SEGGER:
	-$(RM) ./thirdparty/SAGGER/SEGGER/SEGGER_RTT.d ./thirdparty/SAGGER/SEGGER/SEGGER_RTT.o ./thirdparty/SAGGER/SEGGER/SEGGER_RTT.su ./thirdparty/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d ./thirdparty/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o ./thirdparty/SAGGER/SEGGER/SEGGER_RTT_printf.d ./thirdparty/SAGGER/SEGGER/SEGGER_RTT_printf.o ./thirdparty/SAGGER/SEGGER/SEGGER_RTT_printf.su ./thirdparty/SAGGER/SEGGER/SEGGER_SYSVIEW.d ./thirdparty/SAGGER/SEGGER/SEGGER_SYSVIEW.o ./thirdparty/SAGGER/SEGGER/SEGGER_SYSVIEW.su

.PHONY: clean-thirdparty-2f-SAGGER-2f-SEGGER

