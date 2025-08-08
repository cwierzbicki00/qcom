################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32u575zitxq.s 

C_SRCS += \
../Core/Startup/loader.c 

OBJS += \
./Core/Startup/loader.o \
./Core/Startup/startup_stm32u575zitxq.o 

S_DEPS += \
./Core/Startup/startup_stm32u575zitxq.d 

C_DEPS += \
./Core/Startup/loader.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o Core/Startup/%.su Core/Startup/%.cyclo: ../Core/Startup/%.c Core/Startup/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../Core/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include/ -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM33_NTZ/non_secure/ -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/ -I../Middlewares/Third_Party/CMSIS/RTOS2/Include/ -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/ -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/lwip -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/Wireless_Connectivity/lwip-network-interface-integration/include/ -I../Middlewares/Third_Party/Wireless_Connectivity/lwip-network-interface-integration/source/ -I../Middlewares/Third_Party/Wireless_Connectivity/lwip-freertos-integration/ -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/ -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/lwip -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/Wireless_Connectivity/LwIP/src/apps/lwip_dhcpd -I../Core/virt_net/include -I../Core/iperf -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Startup/%.o: ../Core/Startup/%.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Startup

clean-Core-2f-Startup:
	-$(RM) ./Core/Startup/loader.cyclo ./Core/Startup/loader.d ./Core/Startup/loader.o ./Core/Startup/loader.su ./Core/Startup/startup_stm32u575zitxq.d ./Core/Startup/startup_stm32u575zitxq.o

.PHONY: clean-Core-2f-Startup

