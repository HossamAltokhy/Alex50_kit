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



#define LCD_PORT_DIR       DDRA
#define LCD_PORT           PORTA

#define LCD_CONTROL_DIR    DDRB
#define LCD_CONTROL        PORTB

#define LCD_EN             PB0
#define LCD_RW             PB1
#define LCD_RS             PB2



void init_LCD();
void LCD_cmd(char cmd);
void LCD_data(char data);
void LCD_en();
void LCD_clear();
void LCD_num(int num);
void LCD_str(char* str);


int main(void) {
    /* Replace with your application code */

   
    
    while (1) {

    }
}

void LCD_init(){
    // initialize IO pins
    
    LCD_PORT_DIR = 0xFF;
    LCD_CONTROL_DIR |= (1<<LCD_EN)|(1<<LCD_RS)|(1<<LCD_RW);
    
    // Write ONLY
    LCD_CONTROL &= ~(1<<LCD_RW);
    
    _delay_ms(1);
    
    // Commands to initialize LCD
    LCD_clear();
//    LCD_cmd(RETURN_HOME);
//    LCD_cmd(ENTRY_MODE);
    // To be continued .......
    
    void LCD_cmd(char cmd);

}


void LCD_en(){
    LCD_CONTROL |= (1<<LCD_EN);
    _delay_ms(20);
    LCD_CONTROL &= ~(1<<LCD_EN);

}

void LCD_cmd(char cmd){
    //Select Command Register
    LCD_CONTROL &= ~(1<<LCD_RS);
    LCD_PORT = cmd;
    LCD_en();
}
void LCD_data(char data){
    //Select Command Register
    LCD_CONTROL |= (1<<LCD_RS);
    LCD_PORT = data;
    LCD_en();
}

void LCD_clear(){
    LCD_cmd(0x01);
}

