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

char str1[] = "\rLED ON";
char str2[] = "\rLED OFF";
char flag = 0;

ISR(USART_RXC_vect) {
    char data = UDR;

    switch (data) {
        case 'A':
            LED0_ON();
            UART_send_str(str1);
            flag = 1;
            break;
        case 'B':
            LED0_OFF();
            UART_send_str(str2);
            flag = 0;
            break;
    }
}

int main(void) {
    /* Replace with your application code */




    init_LEDs();
    init_UART(BR_9600);

    sei();
    while (1) {

        
        UART_send('A');
        _delay_ms(200);


    }

}
