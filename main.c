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



#define LED0   PA2
#define BUTTON0   PA7


int main(void) {
    /* Replace with your application code */
    // set PA2 as output
    setPORTA_PIN_DIR(LED0, OUTPUT);
    setPORTA_PIN_DIR(BUTTON0, INPUT);
    
    
//    init_LEDS();
    
    while (1) {

        if(readPORTA_PIN(BUTTON0)){
            setPORTA_PIN(LED0, ON);
        }
        else{
            setPORTA_PIN(LED0, OFF);
        }
        
//        if(isPressed(BUTTON0)){
//            LED0_ON();
//        }else{
//            LED0_OFF();
//        }
    }
}
