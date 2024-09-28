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
#include <avr/interrupt.h>
#include "mLCD4.h"
#include "mINT.h"
#include "mADC.h"
#include "mTimer.h"
#include "mUART.h"

#define SPI_PR_4      0
#define SPI_PR_16     1
#define SPI_PR_64     2
#define SPI_PR_128    3

#define SPI_MODE_MASTER    1
#define SPI_MODE_SLAVE     0

#define SS      PB4
#define MOSI    PB5
#define MISO    PB6
#define SCK     PB7


void init_SPI(char SPI_MODE, char SPI_PR);
void SPI_write(char data);
char SPI_read();


void EEPROM_25LC010A_WREN();
void EEPROM_25LC010A_write(char address, char data);

char EEPROM_25LC010A_read(char address);
void EEPROM_25LC010A_CS(char state);

int main(void) {
    /* Replace with your application code */
    setPORTA_DIR(OUTPUT);
    _delay_ms(50);
    init_SPI(SPI_MODE_MASTER, SPI_PR_128);
    EEPROM_25LC010A_CS(ON);

    EEPROM_25LC010A_WREN();
    while (1) {



        EEPROM_25LC010A_write(0x07, 0x09);
        _delay_ms(5);
        char data = EEPROM_25LC010A_read(0x07);
        _delay_ms(5);
        PORTA = data;
    }

}

void init_SPI(char SPI_MODE, char SPI_PR) {

    if (SPI_MODE) {
        // Master Mode
        // I/O Configuration
        setPORTB_PIN_DIR(MOSI, OUTPUT);
        setPORTB_PIN_DIR(SS, OUTPUT);
        setPORTB_PIN_DIR(SCK, OUTPUT);
        _delay_ms(50);
        // SPI Configuration
        SPCR |= (SPI_PR);
        SPCR |= (SPI_MODE << MSTR);
    } else {
        // SLAVE MODE
        // I/O Configuration
        setPORTB_PIN_DIR(MISO, OUTPUT);
        _delay_ms(50);
        // SPI Configuration

    }



    SPCR |= (1 << SPE);
}

void SPI_write(char data) {
    SPDR = data;
    // wait till transmission complete...
    while (!(SPSR & (1 << SPIF)));
}

char SPI_read() {
    // wait till transmission complete...
    while (!(SPSR & (1 << SPIF)));
    return SPDR;
}

void EEPROM_25LC010A_WREN() {
    EEPROM_25LC010A_CS(OFF);
    SPI_write(0x06);
    EEPROM_25LC010A_CS(ON);
    _delay_ms(5);
}

void EEPROM_25LC010A_write(char address, char data) {
    EEPROM_25LC010A_CS(OFF);
    SPI_write(0x02);
    SPI_write(address);
    SPI_write(data);
    EEPROM_25LC010A_CS(ON);
    _delay_ms(5);
}

char EEPROM_25LC010A_read(char address) {
    EEPROM_25LC010A_CS(OFF);
    SPI_write(0x03);
    SPI_write(address);
    SPI_write(0x00);
    EEPROM_25LC010A_CS(ON);
    return SPDR;
}

void EEPROM_25LC010A_CS(char state) {
    switch (state) {
        case ON:
            setPORTB_PIN(SS, ON);
            break;
        case OFF:
            setPORTB_PIN(SS, OFF);
            break;
    }

}