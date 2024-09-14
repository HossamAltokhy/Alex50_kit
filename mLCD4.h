/* 
 * File:   mLCD4.h
 * Author: hossa
 *
 * Created on September 6, 2024, 2:41 PM
 */

#ifndef MLCD4_H
#define	MLCD4_H
#include <avr/io.h>


#define LCD_PORT_DIR       DDRA
#define LCD_PORT           PORTA

#define LCD_CONTROL_DIR    DDRB
#define LCD_CONTROL        PORTB

#define LCD_EN             PB4
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
void LCD4_goto(int row, int coln);

#endif	/* MLCD4_H */

