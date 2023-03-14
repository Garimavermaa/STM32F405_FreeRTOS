
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#define FULL 1
/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

TaskHandle_t  rx_task;
TaskHandle_t tx_task;
QueueHandle_t myqueue;

uint8_t count=0;
uint8_t rx_data=0;
uint8_t queuestatus=0;
void sender_Task()
{
	uint8_t status;
	while(1)
	{
		count++;
		status=xQueueSend(myqueue,&count,100);
		if(status==errQUEUE_FULL)
		{
			GPIOB->ODR &= ~(1<<15);	//Queue Full
			GPIOC->ODR |=(1<<9);
		}
		else
		{
			GPIOB->ODR |= (1<<15);	//Queue Not Full
			GPIOC->ODR &=~(1<<9);
		}
		for(uint32_t x=0;x<100000;x++);
		vTaskDelay(200);
		/*change taskdelay of transmitter high and
		 * receiver less to check queue empty status
		 */
	}
}

void receiver_Task()
{
	uint8_t rx_status=0;
	while(1)
	{
		rx_status=xQueueReceive(myqueue,&rx_data,100);
		if(rx_status==errQUEUE_EMPTY)
		{
			GPIOB->ODR &= ~(1<<14);	//Queue Empty
		}
		else
		{
			GPIOB->ODR |= (1<<14);	//Queue Not Empty
		}
		for(uint32_t y=0;y<100000;y++);
		vTaskDelay(2000);
	}
}

void ledconfig()
{
	RCC->AHB1ENR |= (1<<1)|(1<<2);
	GPIOB->MODER |= (1<<30)|(1<<28);
	GPIOB->ODR |= (1<<15)|(1<<14);
	GPIOC->MODER |= (1<<18);
	GPIOC->ODR &=~(1<<9);
}
int main(void)
{

	HAL_Init();

   SystemClock_Config();
   ledconfig();
   myqueue=xQueueCreate(5,sizeof(uint8_t));
   xTaskCreate(sender_Task,"Transmitter",200,NULL,3,&tx_task);
   xTaskCreate(receiver_Task,"Receiver",200,NULL,2,&rx_task);
   vTaskStartScheduler();
    while (1)
  {

  }

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
