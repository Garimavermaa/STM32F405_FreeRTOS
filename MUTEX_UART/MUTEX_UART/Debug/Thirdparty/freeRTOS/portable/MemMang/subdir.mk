################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Thirdparty/freeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./Thirdparty/freeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./Thirdparty/freeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
Thirdparty/freeRTOS/portable/MemMang/%.o Thirdparty/freeRTOS/portable/MemMang/%.su Thirdparty/freeRTOS/portable/MemMang/%.cyclo: ../Thirdparty/freeRTOS/portable/MemMang/%.c Thirdparty/freeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I"C:/Users/vkish/Desktop/freeRTOS_PROJECT/MUTEX_UART/Thirdparty/freeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/vkish/Desktop/freeRTOS_PROJECT/MUTEX_UART/Thirdparty/freeRTOS/include" -I"C:/Users/vkish/Desktop/freeRTOS_PROJECT/MUTEX_UART/Thirdparty/freeRTOS" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Thirdparty-2f-freeRTOS-2f-portable-2f-MemMang

clean-Thirdparty-2f-freeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./Thirdparty/freeRTOS/portable/MemMang/heap_4.cyclo ./Thirdparty/freeRTOS/portable/MemMang/heap_4.d ./Thirdparty/freeRTOS/portable/MemMang/heap_4.o ./Thirdparty/freeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-Thirdparty-2f-freeRTOS-2f-portable-2f-MemMang

