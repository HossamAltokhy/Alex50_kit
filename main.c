/*
 * File:   main.c
 * Author: hossa
 *
 * Created on August 17, 2024, 4:30 PM
 */

#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>
#include "mDIO.h"
#include "mLEDS.h"
#include "mBUZZ.h"
#include "mBUTTON.h"
#include "mRELAY.h"
#include "mKeypad.h"
#include "m7SEG.h"
#include <stdlib.h>
#include <avr/interrupt.h>
#include "mLCD4.h"
#include "mINT.h"
#include "mADC.h"
#include "mTimer.h"
#include "mUART.h"
#include "mSPI.h"
#include "EEPROM_25LC010A.h"
#include "mTWI.h"
#include "EEPROM_24C16_I2C.h"
#include "mEEPROM.h"

#include "RTOS/include/FreeRTOSConfig.h"
#include "RTOS/include/FreeRTOS.h"
#include "RTOS/include/task.h"



TaskHandle_t T1_Handler = NULL;
TaskHandle_t T2_Handler = NULL;
char str1[] = "Task 1: ";
char str2[] = "Task 2: ";
char flag = 1;
char * pBuffer = NULL;
int data = 0;
TaskStatus_t mTask1Status;
TaskStatus_t mTask2Status;
//ISR(USART_RXC_vect){
//    char data = UDR;
//    
//    if(data == 'A'){
//        flag =0;
//        xTaskResumeFromISR(T1_Handler);
//    }
//}

void T1(void* var) {

    vTaskDelay(500);
    while (1) {
        ADC_SC();
        ADC_wait();
        data = ADC_read()* ADC_step;
        UART_send_str(str1);

        vTaskGetInfo(T1_Handler,
                &mTask1Status,
                pdTRUE, // Include the high water mark in xTaskDetails.
                eInvalid);
        vTaskGetInfo(T2_Handler,
                &mTask2Status,
                pdTRUE, // Include the high water mark in xTaskDetails.
                eInvalid);

        UART_send_num(mTask1Status.eCurrentState);
        UART_send(',');
        UART_send_num(mTask2Status.eCurrentState);
        UART_send('\r');
        taskEXIT_CRITICAL();
        vTaskDelay(5);
    }

    vTaskDelete(NULL);
}

void T2(void* var) {

    while (1) {
        
        UART_send_num(data);
        UART_send('\r');


        vTaskGetInfo(T1_Handler,
                &mTask1Status,
                pdTRUE, // Include the high water mark in xTaskDetails.
                eInvalid);
        vTaskGetInfo(T2_Handler,
                &mTask2Status,
                pdTRUE, // Include the high water mark in xTaskDetails.
                eInvalid);

        UART_send_num(mTask1Status.eCurrentState);
        UART_send(',');
        UART_send_num(mTask2Status.eCurrentState);
        UART_send('\r');

        vTaskDelay(5);
    }
    vTaskDelete(NULL);
}

int main(void) {
    /* Replace with your application code */

    init_LEDs();
    init_UART(9600);
    init_ADC(ADC_CH_0, ADC_Vref_AREF, ADC_PS_128);
    

    xTaskCreate(T1, "LED0", 200, NULL, 1, &T1_Handler);
    xTaskCreate(T2, "LED1", 200, NULL, 1, &T2_Handler);


    vTaskStartScheduler();
    while (1) {


    }

}
