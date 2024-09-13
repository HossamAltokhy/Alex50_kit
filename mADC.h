/* 
 * File:   mADC.h
 * Author: hossa
 *
 * Created on September 13, 2024, 4:16 PM
 */

#ifndef MADC_H
#define	MADC_H


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
#define ADC_CH_0_1     9 // No Gain //0x10

#define ADC_PS_2       1
#define ADC_PS_4       2
#define ADC_PS_8       3
#define ADC_PS_16      4
#define ADC_PS_32      5
#define ADC_PS_64      6
#define ADC_PS_128     7

#define ADC_step       4.887585532746823069403714565  // Vref/1023

void init_ADC(int CH, int Vref, int PR);
void ADC_selectREF(int Vref);
void ADC_selectCH(int CH);
void ADC_EN();
void ADC_SC();
void ADC_wait();
void ADC_selectPS(int PRESCALER);
void ADC_INT_EN();
short ADC_read();


#endif	/* MADC_H */

