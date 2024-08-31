#define F_CPU 16000000UL
#include <avr/io.h>
#include "mDIO.h"
#include <util/delay.h>
#include "m7SEG.h"

void init_7SEG(){
    
    
    _7SEG_PORT_DIR |= (1<<7)|(1<<6)|(1<<5)|(1<<4);
    _7SEG_DIP_DIR |= (1<<3);
    _7SEG_EN_DIR |= (1<<2)|(1<<1);
    
    //_7SEG_EN |= (1<<2)|(1<<1);
}

void set_7SEG_L(int num){
    _7SEG_EN |= (1<<_7SEG_L_EN);
    _7SEG_PORT_DATA &= 0x0F; //_7SEG_PORT_DATA &= ~((1<<7)|(1<<6)|(1<<5)|(1<<4));
    _7SEG_PORT_DATA |= (num<<4);
//    set_7SEG_DIP(ON);
    _delay_ms(1);
    _7SEG_EN &= ~(1<<_7SEG_L_EN);
}

void set_7SEG_R(int num){
    _7SEG_EN |= (1<<_7SEG_R_EN);
    _7SEG_PORT_DATA &= 0x0F; //_7SEG_PORT_DATA &= ~((1<<7)|(1<<6)|(1<<5)|(1<<4));
    _7SEG_PORT_DATA |= (num<<4);
    _delay_ms(1);
    _7SEG_EN &= ~(1<<_7SEG_R_EN);
}

void set_7SEG_DIP(char state){
    switch(state){
        case ON:
            _7SEG_DIP |= (1<<3);
            break;
        case OFF:
            _7SEG_DIP &= ~(1<<3);
            break;
    }
}
