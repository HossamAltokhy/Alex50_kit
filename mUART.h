/* 
 * File:   mUART.h
 * Author: hossa
 *
 * Created on September 27, 2024, 1:30 PM
 */

#ifndef MUART_H
#define	MUART_H

#define BR_9600   9600
#define BR_19_2K  19200
#define BR_115_2K 115200

void init_UART(int BAUDRATE);
void UART_send(char data);
void UART_send_str(char* str);
char UART_receive();
void UART_send_num(int num);

#endif	/* MUART_H */

