/* 
 * File:   mKeypad.h
 * Author: hossa
 *
 * Created on August 30, 2024, 2:10 PM
 */

#ifndef MKEYPAD_H
#define	MKEYPAD_H

#include <avr/io.h>

#define KEYPAD_PORT      PORTD
#define KEYPAD_PORT_DIR  DDRD
#define KEYPAD_PIN       PIND
#define row0            0x10
#define row1            0x20
#define row2            0x40
#define row3            0x80

void init_Keypad();
char getKey();
#endif	/* MKEYPAD_H */

