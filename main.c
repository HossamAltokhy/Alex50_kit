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
