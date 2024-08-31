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

    init_7SEG();
    int num1=0;
    int num2=0;
    unsigned int count =0;
    while (1) {
        if(num1==10){
            num1 =0 ;
            num2++;
        }
        set_7SEG_R(num1);
        if(num2==10){
            num2 =0 ;
        }
        set_7SEG_L(num2);
        count++;
        _delay_ms(10);
        if(count == 99){
            num1++;
            count =0;
        }
        //_delay_ms(200);
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

