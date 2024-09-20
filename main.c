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


ISR(TIMER0_COMP_vect){
    // 
    static int counter0 = 0;
    static int second = 0;
    counter0++;
    if(counter0 == 156){
        // Every One Second
        if(second ==60){
            second = 0;
        }
        
        counter0 =0;
        
    }
  
}

int main(void) {
    /* Replace with your application code */

    init_BUTTONs();
    init_LCD4();
    OCR0 = 100;
    setPORTB_PIN_DIR(PB3, OUTPUT);
    TCCR0 |= (1<<COM01)|(1<<COM00);
    init_Timer0(TIMER0_FPWM, TIMER0_PRE_1024);
    
    Timer0_OC_Enable();
    
    sei();
    while (1) {

        if(isPressed(BTN2)){
            OCR0 += 10;
            _delay_ms(250);
        }
        if(isPressed(BTN1)){
            OCR0 -= 10;
            _delay_ms(250);
        }
        LCD4_clear();
        LCD4_num(OCR0);
      
    }
    
}
