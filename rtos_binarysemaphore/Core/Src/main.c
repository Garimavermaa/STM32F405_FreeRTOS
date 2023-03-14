
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);


TaskHandle_t high_task;
TaskHandle_t low_task;
SemaphoreHandle_t mysemaphore;

void task1()		//High Priority Task
{
	while(1)
	{
		if(mysemaphore!=NULL)	// check for semaphore available
		{
			if(xSemaphoreTake(mysemaphore,10)==pdTRUE)	//Take semaphore
			{
				GPIOB->ODR^=(1<<14);		// toggle LED 3
				for(uint32_t a=0;a<100000;a++);
				xSemaphoreGive(mysemaphore);	// give semaphore
			}
		}
		vTaskDelay(1000);			// task delay
	}
}
void task2()
{
	while(1)
	{
		if(mysemaphore!=NULL)	// check for semaphore available
		{
			if(!(GPIOB->IDR & (1<<7)))	//check if switch pressed
			{
				GPIOB->ODR&=~(1<<15);	// LED 15 ON
				if(xSemaphoreTake(mysemaphore,10)==pdTRUE)	// Take semaphore
				{
					while(!(GPIOB->IDR & (1<<7)));	// wait till switch released
					for(uint32_t a=0;a<100000;a++);
					xSemaphoreGive(mysemaphore);	// give semaphore
				}
			}
		}
		GPIOB->ODR|=(1<<15);		// LED 15 OFF
		vTaskDelay(1000);			// Task delay
	}
}

void gpio_config()
{
	RCC->AHB1ENR |=(1<<1);				//GPIOB clocke enable
	GPIOB->MODER |= (1<<28)|(1<<30);	// PB14 & PB15 output
	GPIOB->ODR |= (1<<14)|(1<<15);		// LED 2 & LED 3 OFF

	GPIOB->MODER &= ~(3<<14);			// PB7 input
}
int main(void)
{
   HAL_Init();
   SystemClock_Config();
   gpio_config();
   mysemaphore=xSemaphoreCreateBinary();	//Create binary semaphore
   xSemaphoreGive(mysemaphore);				// give semaphore for task to access
   xTaskCreate(task1,"High task",200,NULL,3,&high_task);	//task1 create
   xTaskCreate(task2,"Low task",200,NULL,1,&low_task);		// task2 create
   vTaskStartScheduler();			// start task scheduler
   while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM6 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM6) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
