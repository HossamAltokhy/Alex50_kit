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
#include "mTWI.h"
#include "EEPROM_24C16_I2C.h"
#include "mEEPROM.h"



int main(void) {
    /* Replace with your application code */
    
    
    
    init_LEDs();
    init_BUTTONs();
    
    _delay_ms(50);
    char state =  EEPROM_read(0x07);
    while (1) {
        
        if(isPressed(BTN0)){
            state++;
            if(state == 3){
                state = 0;
            }
            EEPROM_write(0x07,state);
            _delay_ms(200);
        }
        
        switch(state){
            case 0:
                LED0_ON();
                LED1_OFF();
                LED2_OFF();
                
                break;
            case 1:
                LED1_ON();
                LED0_OFF();
                LED2_OFF();
                break;
            case 2:
                LED2_ON();
                LED1_OFF();
                LED0_OFF();
                break;
        }
    }

}
