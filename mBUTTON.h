/* 
 * File:   mBUTTON.h
 * Author: hossa
 *
 * Created on August 24, 2024, 2:49 PM
 */

#ifndef MBUTTON_H
#define	MBUTTON_H
#include <avr/io.h>

#define BTN0  PB0
#define BTN1  PD6 
#define BTN2  PD2

void init_BUTTONs();
char isPressed(char BUTTON);

#endif	/* MBUTTON_H */

