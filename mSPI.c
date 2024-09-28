#define F_CPU 16000000UL
#include <util/delay.h>

#include <avr/io.h>
#include "mSPI.h"
#include "mDIO.h"




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

