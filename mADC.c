#include <avr/io.h>
#include "mADC.h"



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

short ADC_read(){
    short ADC_data = 0;
    ADC_data = ADCL;
    ADC_data |= (ADCH<<8);
    return ADC_data;
}
