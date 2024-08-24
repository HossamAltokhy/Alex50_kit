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

int main(void) {
    /* Replace with your application code */

    int x = 10;
    init_LEDs();
//    init_BUZZER();
    init_RELAY();
    init_BUTTONs();


    while (1) {
        x=10;
        if (isPressed(BTN0)) {
            LED0_ON();
            LED1_ON();
            LED2_ON();
            //BUZZER_ON();
            RELAY_ON();
        } else {
            LED0_OFF();
            LED1_OFF();
            LED2_OFF();
            //BUZZER_OFF();
            RELAY_OFF();
        }


    }
}
