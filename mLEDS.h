/* 
 * File:   mLEDS.h
 * Author: hossa
 *
 * Created on August 24, 2024, 1:31 PM
 */

#ifndef MLEDS_H
#define	MLEDS_H

#include <avr/io.h>

#define LED0  PC2
#define LED1  PC7
#define LED2  PD3

void init_LEDs();

void LED0_ON();
void LED0_OFF();
void LED0_TOGGLE();

void LED1_ON();
void LED1_OFF();
void LED1_TOGGLE();

void LED2_ON();
void LED2_OFF();




#endif	/* MLEDS_H */

