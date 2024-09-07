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


char str[] = "Hello World";

ISR(INT1_vect) {
    //char * ptr ;
    //ptr= (char *)0x35;
    //    PORTC ^= (1<<LED0);
    LCD4_data('A');
    // LED0_TOGGLE();
}


int main(void) {
    /* Replace with your application code */

    //init_LEDs();
    init_LCD4();

    init_INT1(INT_MODE_RISING);
    if(GICR &(1<<INT1)){
       

    }
    // Enable Global Interrupt
    sei();

    while (1) {

        _delay_ms(5000);

    }
}
