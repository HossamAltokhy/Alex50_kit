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


char str[] = "Hello World";

#define INT_MODE_RISING        3
#define INT_MODE_FALLING       2
#define INT_MODE_ANY_CHANGE    1
#define INT_MODE_LOW_LEVEL     0

ISR(INT1_vect) {
    //char * ptr ;
    //ptr= (char *)0x35;
    //    PORTC ^= (1<<LED0);
    LCD4_data('A');
    // LED0_TOGGLE();
}


void init_INT0(int INT_MODE);
void init_INT1(int INT_MODE);

void INT0_selectMODE(int INT_MODE);
void INT0_enable();


void INT1_selectMODE(int INT_MODE);
void INT1_enable();

void INT2_enable();

void INT0_disable();
void INT1_disable();
void INT2_disable();


int main(void) {
    /* Replace with your application code */

    //init_LEDs();
    init_LCD4();

    init_INT1(INT_MODE_RISING);

    // Enable Global Interrupt
    sei();

    while (1) {

        _delay_ms(5000);

    }
}

void init_INT0(int INT_MODE) {
    INT0_selectMODE(INT_MODE);
    INT0_enable();
}

void init_INT1(int INT_MODE) {
    INT1_selectMODE(INT_MODE);
    INT1_enable();
}

void INT0_selectMODE(int INT_MODE) {
    // MCUCR to select Mode for INT0
    MCUCR |= INT_MODE;

}

void INT1_selectMODE(int INT_MODE) {
    // MCUCR to select Mode for INT1
    MCUCR |= INT_MODE << ISC10;

}

void INT0_enable() {
    GICR |= (1 << INT0);
}

void INT1_enable() {
    GICR |= (1 << INT1);
}

void INT2_enable() {
    GICR |= (1 << INT2);
}

void INT0_disable() {
    GICR &= ~(1 << INT0);
}
void INT1_disable() {
    GICR &= ~(1 << INT1);
}
void INT2_disable() {
    GICR &= ~(1 << INT2);
}