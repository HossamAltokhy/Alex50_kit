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


#define BR_9600   9600
#define BR_19_2K  19200
#define BR_115_2K 115200

void init_UART(int BAUDRATE);
void UART_send(char data);
void UART_send_str(char* str);
char UART_receive();
void UART_send_num(int num);
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

void init_UART(int BAUDRATE) {
    // Set Baud Rate
    short result = (F_CPU / BAUDRATE / 16.0) - 1;
    //    short result = (F_CPU/(float)(BAUDRATE*16.0))-1;
    UBRRL = (char) result;
    UBRRH = result >> 8;
    // Enable Tx, Rx
    UCSRB |= (1 << TXEN) | (1 << RXEN);
    UCSRB |= (1 << RXCIE);
}

void UART_send(char data) {
    while (!(UCSRA & (1 << UDRE)));
    UDR = data;
}

void UART_send_str(char* str) {
    for (int i = 0; str[i] != '\0'; i++) {
        UART_send(str[i]);
    }
}
void UART_send_num(int num){
    char str[11];
    itoa(num, str, 10);
    UART_send_str(str);
    
}

char UART_receive() {
    while (!(UCSRA & (1 << RXC)));
    return UDR;
}