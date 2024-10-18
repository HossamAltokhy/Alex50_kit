#include <avr/io.h>
#include "mTWI.h"
#include "EEPROM_24C16_I2C.h"

void init_EEPROM_24C16N() {
    init_TWI(myADDRESS, SCL_100KHz);
}

void EEPROM_24C16N_write(char MemLocation, char data) {
    // START CONDITION
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);
    // WAIT by POOLING
    while (!(TWCR & (1 << TWINT)));
    // Read STATUS BITS
    if ((TWSR & 0xF8) == 0x08) {
        TWDR = EEPROM_24C16N_ADDRESS_W;
        TWCR = (1 << TWINT) | (1 << TWEN);
        // WAIT by POOLING
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0x18) {
            TWDR = MemLocation;
            TWCR = (1 << TWINT) | (1 << TWEN);
            // WAIT by POOLING
            while (!(TWCR & (1 << TWINT)));
            if ((TWSR & 0xF8) == 0x28) {
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

}
char EEPROM_24C16N_read(char MemLocation){
    // START CONDITION
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);
    // WAIT by POOLING
    while (!(TWCR & (1 << TWINT)));
    // Read STATUS BITS
    if ((TWSR & 0xF8) == 0x08) {
        TWDR = EEPROM_24C16N_ADDRESS_W;
        TWCR = (1 << TWINT) | (1 << TWEN);
        // WAIT by POOLING
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0x18) {
            TWDR = MemLocation;
            TWCR = (1 << TWINT) | (1 << TWEN);
            // WAIT by POOLING
            while (!(TWCR & (1 << TWINT)));
            if ((TWSR & 0xF8) == 0x28) {
                return TWI_MR(EEPROM_24C16N_ADDRESS_R);
            }
        }
    }
    return -1;
}
