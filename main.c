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



int main(void) {
    /* Replace with your application code */

    init_Keypad();
    setPORTB_DIR(OUTPUT);

    while (1) {

        setPORTB(getKey());
        _delay_ms(200);
    }
}
