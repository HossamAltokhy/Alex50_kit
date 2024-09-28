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
#include "mSPI.h"
#include "EEPROM_25LC010A.h"

#define SCL_100KHz    0
#define SCL_400KHz    1
#define myADDRESS   0x07

// SLAVE ADDREE to Write 0000100+0   7bit address
// SLAVE ADDREE to Read  0000100+1   7bit address

#define SLA_W    0x08
#define SLA_R    0x09

void init_TWI(char TWI_ADDRESS, char SCL_FREQ);

void TWI_MT(char SLA_ADDRESS, char data);
char TWI_SR();

char TWI_MR(char SLA_ADDRESS);
void TWI_ST(char data);

int main(void) {
    /* Replace with your application code */
    init_TWI(myADDRESS, SCL_100KHz);
    setPORTA_DIR(OUTPUT);

    _delay_ms(500);


    while (1) {
        _delay_ms(200);
        PORTA = TWI_MR(SLA_R);
    }

}

void init_TWI(char TWI_ADDRESS, char SCL_FREQ) {

    TWAR = (TWI_ADDRESS << 1);
    switch (SCL_FREQ) {
        case SCL_100KHz:
            TWBR = 18;
            break;
        case SCL_400KHz:
            TWBR = 3;
            break;
    }

}

void TWI_MT(char SLA_ADDRESS, char data) {

    // START CONDITION
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);
    // WAIT by POOLING
    while (!(TWCR & (1 << TWINT)));
    // Read STATUS BITS
    if ((TWSR & 0xF8) == 0x08) {
        TWDR = SLA_ADDRESS;
        TWCR = (1 << TWINT) | (1 << TWEN);
        // WAIT by POOLING
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0x18) {
            TWDR = data;
            TWCR = (1 << TWINT) | (1 << TWEN);
            // WAIT by POOLING
            while (!(TWCR & (1 << TWINT)));
            if ((TWSR & 0xF8) == 0x28) {
                TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);
            }
        }
    }

}

char TWI_SR() {

    // Enable ACKNOWLDGE to be sent if received my own ADDRESS
    TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);
    // WAIT by POOLING
    while (!(TWCR & (1 << TWINT)));
    if ((TWSR & 0xF8) == 0x60) {
        // Enable ACKNOWLDGE to be sent if received my own ADDRESS
        TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);
        // WAIT by POOLING
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0x80) {
            return TWDR;
        }
    }
    
        return 0;
}

char TWI_MR(char SLA_ADDRESS) {
    // START CONDITION
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);
    // WAIT by POOLING
    while (!(TWCR & (1 << TWINT)));
    // Read STATUS BITS
    if ((TWSR & 0xF8) == 0x08) {
        TWDR = SLA_ADDRESS;
        TWCR = (1 << TWINT) | (1 << TWEN);
        // WAIT by POOLING
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0x40) {
            // Enable ACKNOWLDGE to be sent if received my own ADDRESS
            TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);
            // WAIT by POOLING
            while (!(TWCR & (1 << TWINT)));
            if ((TWSR & 0xF8) == 0x50) {
                char data = TWDR;
                TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);
                return data;
            }
        }
    }
    
    return 0;
}


void TWI_ST(char data) {
    // Enable ACKNOWLDGE to be sent if received my own ADDRESS
    TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);
    // WAIT by POOLING
    while (!(TWCR & (1 << TWINT)));
    if ((TWSR & 0xF8) == 0xA8) {
        TWDR = data;
        TWCR = (1 << TWINT) | (1 << TWEN);
        // WAIT by POOLING
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0xB8){
            
        }
    }
}