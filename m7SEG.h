/* 
 * File:   m7SEG.h
 * Author: hossa
 *
 * Created on August 30, 2024, 3:07 PM
 */

#ifndef M7SEG_H
#define	M7SEG_H




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




#endif	/* M7SEG_H */

