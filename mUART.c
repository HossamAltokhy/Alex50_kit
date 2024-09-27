#define F_CPU 16000000UL

#include <avr/io.h>
#include "mUART.h"
#include <stdlib.h>

void init_UART(int BAUDRATE) {
    // Set Baud Rate
    short result = (F_CPU / BAUDRATE / 16.0) - 1;
    //    short result = (F_CPU/(float)(BAUDRATE*16.0))-1;
    UBRRL = (char) result;
    UBRRH = result >> 8;
    // Enable Tx, Rx
    UCSRB |= (1 << TXEN) | (1 << RXEN);
    UCSRB |= (1 << RXCIE);
}

void UART_send(char data) {
    while (!(UCSRA & (1 << UDRE)));
    UDR = data;
}

void UART_send_str(char* str) {
    for (int i = 0; str[i] != '\0'; i++) {
        UART_send(str[i]);
    }
}
void UART_send_num(int num){
    char str[11];
    itoa(num, str, 10);
    UART_send_str(str);
    
}

char UART_receive() {
    while (!(UCSRA & (1 << RXC)));
    return UDR;
}
