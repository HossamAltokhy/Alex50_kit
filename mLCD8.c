#define F_CPU 16000000UL
#include <util/delay.h>
#include <avr/io.h>
#include <stdlib.h>
#include "mLCD8.h"
#include "mDIO.h"



void init_LCD(){
    // initialize IO pins
    
    LCD_PORT_DIR = 0xFF;
    LCD_CONTROL_DIR |= (1<<LCD_EN)|(1<<LCD_RS)|(1<<LCD_RW);
    
    // Write ONLY
    LCD_CONTROL &= ~(1<<LCD_RW);
    
    _delay_ms(1);
    
    // Commands to initialize LCD
    LCD_clear();
    LCD_cmd(RETURN_HOME);
    _delay_ms(2);
    LCD_cmd(ENTRY_MODE);
    _delay_ms(2);
    LCD_cmd(DISPLAY_ON_CURSOR_OFF_BLINKING);
    _delay_ms(2);
    LCD_cmd(_8BIT_MODE);
    
    
    // To be continued .......
    _delay_ms(20);
    

}





void LCD_en(){
    LCD_CONTROL |= (1<<LCD_EN);
    _delay_us(50);
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
    LCD_cmd(CLEAR);
    _delay_ms(2);
}

void LCD_str(char* str){
    for(int i=0; str[i] != '\0'; i++){
        LCD_data(str[i]);
    }
}

void LCD_num(int num){
    char str[11];
    
    itoa(num, str, 10);
    
    LCD_str(str);
}
