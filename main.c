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
#include "m7SEG.h"
#include <stdlib.h>



#define LCD_PORT_DIR       DDRA
#define LCD_PORT           PORTA

#define LCD_CONTROL_DIR    DDRB
#define LCD_CONTROL        PORTB

#define LCD_EN             PB3
#define LCD_RW             PB2
#define LCD_RS             PB1

// LCD Commands Table 

#define CLEAR                               0x01
#define RETURN_HOME                         0x02
#define ENTRY_MODE                          0x06
#define DISPLAY_ON_CURSOR_ON                0x0E  
#define DISPLAY_ON_CURSOR_OFF_BLINKING      0x0D
#define DISPLAY_ON_CURSOR_OFF_NOBLINKING    0x0C
#define _4BIT_MODE                          0x2C


void init_LCD4();
void LCD4_cmd(char cmd);
void LCD4_data(char data);
void LCD4_en();
void LCD4_clear();
void LCD4_num(int num);
void LCD4_str(char* str);

char str[] = "Hello World";

int main(void) {
    /* Replace with your application code */


    init_LCD4();

    LCD4_data('A');
    while (1) {


    }
}

void init_LCD4() {

    LCD_PORT_DIR |= 0xF0;
    LCD_CONTROL_DIR |= (1 << LCD_EN) | (1 << LCD_RS) | (1 << LCD_RW);

    // Write Only
    LCD_CONTROL &= ~(1 << LCD_RW);

    _delay_ms(1);

    // Commands to initialize LCD
    LCD4_clear();
    LCD4_cmd(RETURN_HOME);
    _delay_ms(2);
    LCD4_cmd(ENTRY_MODE);
    _delay_ms(2);
    LCD4_cmd(DISPLAY_ON_CURSOR_ON);
    _delay_ms(2);
    LCD4_cmd(_4BIT_MODE);

    _delay_ms(50);

}

void LCD4_en() {
    LCD_CONTROL |= (1 << LCD_EN);
    _delay_us(50);
    LCD_CONTROL &= ~(1 << LCD_EN);
}

void LCD4_cmd(char cmd) {

    //Select Command Register
    LCD_CONTROL &= ~(1 << LCD_RS);
    LCD_PORT = (LCD_PORT & 0x0F)|(cmd & 0xF0);
    LCD4_en();
    LCD_PORT = (LCD_PORT & 0x0F)|(cmd<<4);
    LCD4_en();

}
void LCD4_data(char data) {

    //Select Data Register
    LCD_CONTROL |= (1 << LCD_RS);
    LCD_PORT = (LCD_PORT & 0x0F)|(data & 0xF0);
    LCD4_en();
    LCD_PORT = (LCD_PORT & 0x0F)|(data<<4);
    LCD4_en();

}

void LCD4_str(char* str){
    for(int i=0; str[i] != '\0'; i++){
        LCD4_data(str[i]);
    }
}

void LCD4_num(int num){
    char str[11];
    
    itoa(num, str, 10);
    
    LCD4_str(str);
}

void LCD4_clear(){
    LCD4_cmd(CLEAR);
    _delay_ms(4);
}
