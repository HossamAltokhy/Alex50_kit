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


#define TIMER0_NORMAL   0
#define TIMER0_CTC      1
#define TIMER0_PWM      2
#define TIMER0_FPWM     3



#define TIMER0_OFF          0
#define TIMER0_No_PRE       1
#define TIMER0_PRE_8        2
#define TIMER0_PRE_64       3
#define TIMER0_PRE_256      4
#define TIMER0_PRE_1024     5
#define TIMER0_EDGE_FALLING 6
#define TIMER0_EDGE_RISING  7


void init_Timer0(int mode, int Prescalar);

void Timer0_OVF_Enable();
void Timer0_OC_Enable();

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
    TCCR0 |= (1<<COM00);
    init_Timer0(TIMER0_CTC, TIMER0_PRE_1024);
    
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

// Reg &= ~(1<<num);

void init_Timer0(int mode, int Prescalar){
    switch(mode){
        case TIMER0_NORMAL:
            TCCR0 &= ~((1<<WGM01)|(1<<WGM00));
            break;
        case TIMER0_CTC:
            TCCR0 &= ~(1<<WGM00);
            TCCR0 |= (1<<WGM01);
            break;
        case TIMER0_PWM:
            TCCR0 &= ~(1<<WGM01);
            TCCR0 |= (1<<WGM00);
            break;
        case TIMER0_FPWM:
            TCCR0 |= ((1<<WGM01)|(1<<WGM00));
            break;
    }
    
    TCCR0 |= Prescalar;
    
}


void Timer0_OVF_Enable(){
    TIMSK |= (1<<TOIE0);
}
void Timer0_OC_Enable(){
    TIMSK |= (1<<OCIE0);
}