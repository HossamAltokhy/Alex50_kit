/* 
 * File:   mLCD8.h
 * Author: hossa
 *
 * Created on August 31, 2024, 2:46 PM
 */

#ifndef MLCD8_H
#define	MLCD8_H
#include <avr/io.h>

#define LCD_PORT_DIR       DDRA
#define LCD_PORT           PORTA

#define LCD_CONTROL_DIR    DDRB
#define LCD_CONTROL        PORTB

#define LCD_EN             PB0
#define LCD_RW             PB1
#define LCD_RS             PB2

// LCD Commands Table 

#define CLEAR                               0x01
#define RETURN_HOME                         0x02
#define ENTRY_MODE                          0x06
#define DISPLAY_ON_CURSOR_ON                0x0E  
#define DISPLAY_ON_CURSOR_OFF_BLINKING      0x0D
#define DISPLAY_ON_CURSOR_OFF_NOBLINKING    0x0C
#define _8BIT_MODE                          0x3C


void init_LCD();
void LCD_cmd(char cmd);
void LCD_data(char data);
void LCD_en();
void LCD_clear();
void LCD_num(int num);
void LCD_str(char* str);

#endif	/* MLCD8_H */

