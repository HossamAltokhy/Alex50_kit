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





int main(void) {
    /* Replace with your application code */

    init_7SEG();

    _delay_ms(10);
    set_7SEG_L(7);
    
    while (1) {

      // _delay_us(50);
       set_7SEG_R(3);
       set_7SEG_L(7);
    }
}

