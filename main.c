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


//ISR(ADC_vect){
//    // Read ADC DATA REGISTER 
//        LCD4_clear();
//        LCD4_num(ADCW * ADC_step);
//        LCD4_data('m');
//        LCD4_data('V');
//}

int main(void) {
    /* Replace with your application code */

    init_LCD4();
    init_ADC(ADC_CH_1, ADC_Vref_AREF, ADC_PS_128);

    int data1 = 0;
    while (1) {

        
        ADC_SC();
        ADC_wait();
        data1 = ADC_read() * ADC_step;

        

      
        
        
        
        //Display
        LCD4_clear();
        //LCD4_goto(0, 6);
        LCD4_num(data1);
        LCD4_data('m');
        LCD4_data('V');
        _delay_ms(100);

        //        
        //        LCD4_clear();

    }
}
