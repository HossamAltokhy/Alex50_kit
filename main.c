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

#define ADC_Vref_AVCC   0
#define ADC_Vref_AREF   1
#define ADC_Vref_2_56V  3

#define ADC_CH_0       0
#define ADC_CH_1       1
#define ADC_CH_2       2
#define ADC_CH_3       3
#define ADC_CH_4       4
#define ADC_CH_5       5
#define ADC_CH_6       6
#define ADC_CH_7       7

#define ADC_PS_2       1
#define ADC_PS_4       2
#define ADC_PS_8       3
#define ADC_PS_16      4
#define ADC_PS_32      5
#define ADC_PS_64      6
#define ADC_PS_128     7

#define ADC_step       4.887585532746823069403714565

void init_ADC(int CH, int Vref, int PR);
void ADC_selectREF(int Vref);
void ADC_selectCH(int CH);
void ADC_EN();
void ADC_SC();
void ADC_wait();
void ADC_selectPS(int PRESCALER);
void ADC_INT_EN();



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
    init_ADC(ADC_CH_0, ADC_Vref_AREF, ADC_PS_128);

    int data1 = 0, data2 = 0;
    while (1) {

        ADC_selectCH(ADC_CH_0);
        ADC_SC();
        ADC_wait();
        data1 = ADCW * ADC_step;

        

        ADC_selectCH(ADC_CH_1);
        ADC_SC();
        ADC_wait();
        data2 = ADCW * ADC_step;
        
        
        
        //Display
        LCD4_clear();
        LCD4_goto(0, 6);
        LCD4_num(data1);
        LCD4_data('m');
        LCD4_data('V');
        LCD4_goto(1, 6);
        LCD4_num(data2);
        LCD4_data('m');
        LCD4_data('V');
        _delay_ms(200);

        //        
        //        LCD4_clear();

    }
}

void init_ADC(int CH, int Vref, int PR) {
    ADC_selectREF(Vref);
    ADC_selectCH(CH);
    ADC_selectPS(PR);
    // INTERRUPT?
    //    ADC_INT_EN();

    ADC_EN();
}

void ADC_selectREF(int Vref) {
    ADMUX |= (Vref << REFS0);
}

void ADC_selectCH(int CH) {
    ADMUX &= 0xE0; // 11100000
    ADMUX |= CH;
}

void ADC_EN() {
    ADCSRA |= (1 << ADEN);
}

void ADC_SC() {
    ADCSRA |= (1 << ADSC);
}

void ADC_INT_EN() {
    ADCSRA |= (1 << ADIE);
}

void ADC_selectPS(int PRESCALER) {
    ADCSRA |= PRESCALER;
}

void ADC_wait() {
    //Booling
    while (!(ADCSRA & (1 << ADIF)));
}