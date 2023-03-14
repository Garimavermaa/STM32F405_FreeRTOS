################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS/SAGGER/SEGGER/SEGGER_RTT.c \
../FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_printf.c \
../FreeRTOS/SAGGER/SEGGER/SEGGER_SYSVIEW.c 

S_UPPER_SRCS += \
../FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT.o \
./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o \
./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_printf.o \
./FreeRTOS/SAGGER/SEGGER/SEGGER_SYSVIEW.o 

S_UPPER_DEPS += \
./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT.d \
./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_printf.d \
./FreeRTOS/SAGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/SAGGER/SEGGER/%.o FreeRTOS/SAGGER/SEGGER/%.su: ../FreeRTOS/SAGGER/SEGGER/%.c FreeRTOS/SAGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS/include" -I"C:/Users/garim/Desktop/freertos/STMF407/FreeRTOS/freeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
FreeRTOS/SAGGER/SEGGER/%.o: ../FreeRTOS/SAGGER/SEGGER/%.S FreeRTOS/SAGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-FreeRTOS-2f-SAGGER-2f-SEGGER

clean-FreeRTOS-2f-SAGGER-2f-SEGGER:
	-$(RM) ./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT.d ./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT.o ./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT.su ./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d ./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o ./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_printf.d ./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_printf.o ./FreeRTOS/SAGGER/SEGGER/SEGGER_RTT_printf.su ./FreeRTOS/SAGGER/SEGGER/SEGGER_SYSVIEW.d ./FreeRTOS/SAGGER/SEGGER/SEGGER_SYSVIEW.o ./FreeRTOS/SAGGER/SEGGER/SEGGER_SYSVIEW.su

.PHONY: clean-FreeRTOS-2f-SAGGER-2f-SEGGER

