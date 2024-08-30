#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>
#include "mKeypad.h"


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
