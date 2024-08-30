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


#define _7SEG_PORT_DIR    DDRA
#define _7SEG_PORT_DATA   PORTA
#define _7SEG_EN_DIR      DDRB
#define _7SEG_EN          PORTB
#define _7SEG_DIP_DIR     DDRB
#define _7SEG_DIP         PORTB

#define _7SEG_R_EN        PB1     
#define _7SEG_L_EN        PB2     


void init_7SEG();
void set_7SEG_L(int num);
void set_7SEG_R(int num);
void set_7SEG_DIP(char state);



int main(void) {
    /* Replace with your application code */

    init_7SEG();

    _delay_ms(10);
    set_7SEG_L(7);
    
    while (1) {

      // _delay_us(50);
       set_7SEG_R(3);
       set_7SEG_L(7);
    }
}

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
    set_7SEG_DIP(ON);
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