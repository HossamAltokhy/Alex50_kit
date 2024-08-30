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


#define KEYPAD_PORT      PORTD
#define KEYPAD_PORT_DIR  DDRD
#define KEYPAD_PIN       PIND
#define row0            0x10
#define row1            0x20
#define row2            0x40
#define row3            0x80

void init_Keypad();
char getKey();

int main(void) {
    /* Replace with your application code */

    init_Keypad();
    setPORTB_DIR(OUTPUT);

    while (1) {

        setPORTB(getKey());
        _delay_ms(200);
    }
}

void init_Keypad() {
    KEYPAD_PORT_DIR = 0x0F; // 00001111

    KEYPAD_PORT = 0x07; // 00000111
}

char getKey() {
    KEYPAD_PORT = 0x07;
    char row = (KEYPAD_PIN & 0xF0);

    switch (row) {
        case row0:
            KEYPAD_PORT &= ~((1<<2)|(1<<1)|(1<<0));
            _delay_ms(10);
            KEYPAD_PORT |=(1<<0);
            if(KEYPAD_PIN & 0xF0){
                return 3;
            }
            
            KEYPAD_PORT &= ~((1<<2)|(1<<1)|(1<<0));
            _delay_ms(10);
            KEYPAD_PORT |=(1<<1);
            if(KEYPAD_PIN & 0xF0){
                return 2;
            }
            
            return 1;
            break;
        case row1:
            KEYPAD_PORT &= ~((1<<2)|(1<<1)|(1<<0));
            _delay_ms(10);
            KEYPAD_PORT |=(1<<0);
            if(KEYPAD_PIN & 0xF0){
                return 6;
            }
            
            KEYPAD_PORT &= ~((1<<2)|(1<<1)|(1<<0));
            _delay_ms(10);
            KEYPAD_PORT |=(1<<1);
            
            if(KEYPAD_PIN & 0xF0){
                return 5;
            }
            
            return 4;
            break;
        case row2:
            KEYPAD_PORT &= ~((1<<2)|(1<<1)|(1<<0));
            _delay_ms(10);
            KEYPAD_PORT |=(1<<0);
            if(KEYPAD_PIN & 0xF0){
                return 9;
            }
            
            KEYPAD_PORT &= ~((1<<2)|(1<<1)|(1<<0));
            _delay_ms(10);
            KEYPAD_PORT |=(1<<1);
            
            if(KEYPAD_PIN & 0xF0){
                return 8;
            }
            
            return 7;
            
            break;
        case row3:
            KEYPAD_PORT &= ~((1<<2)|(1<<1)|(1<<0));
            _delay_ms(10);
            KEYPAD_PORT |=(1<<0);
            if(KEYPAD_PIN & 0xF0){
                return '#';
            }
            
            KEYPAD_PORT &= ~((1<<2)|(1<<1)|(1<<0));
            _delay_ms(10);
            KEYPAD_PORT |=(1<<1);
            
            if(KEYPAD_PIN & 0xF0){
                return 0;
            }
            
            return '*';
            break;


    }

    return -1;
}