#include <avr/io.h>
#include "mTWI.h"
#define F_CPU 16000000UL
#include <util/delay.h>


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
    if ((TWSR & 0xF8) == 0x08 || (TWSR & 0xF8) == 0x10 ) {
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
                _delay_ms(50);
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
        if ((TWSR & 0xF8) == 0xB8) {

        }
    }
}
