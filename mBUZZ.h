/* 
 * File:   mBUZZ.h
 * Author: hossa
 *
 * Created on August 24, 2024, 1:57 PM
 */

#ifndef MBUZZ_H
#define	MBUZZ_H
#include <avr/io.h>

#define BUZZER PA3

void init_BUZZER();
void BUZZER_ON();
void BUZZER_OFF();
#endif	/* MBUZZ_H */

 