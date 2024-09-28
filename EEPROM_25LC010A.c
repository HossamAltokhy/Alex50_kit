#include <avr/io.h>
#include "mSPI.h"
#include "mDIO.h"
#define F_CPU 16000000UL
#include <util/delay.h>
#include "EEPROM_25LC010A.h"

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
