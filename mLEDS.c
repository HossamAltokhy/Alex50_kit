
#include "mDIO.h"
#include "mLEDS.h"

void init_LEDs(){
    setPORTC_PIN_DIR(LED0, OUTPUT);
    setPORTC_PIN_DIR(LED1, OUTPUT);
    setPORTD_PIN_DIR(LED2, OUTPUT);
}

void LED0_ON(){
    setPORTC_PIN(LED0, ON);
}
void LED0_OFF(){
    setPORTC_PIN(LED0, OFF);
}
void LED0_TOGGLE(){
    PORTC ^= (1<<LED0);
}

void LED1_TOGGLE(){
    PORTC ^= (1<<LED1);
}

void LED1_ON(){
    setPORTC_PIN(LED1, ON);
}
void LED1_OFF(){
    setPORTC_PIN(LED1, OFF);
}

void LED2_ON(){
    setPORTD_PIN(LED2, ON);
}
void LED2_OFF(){
    setPORTD_PIN(LED2, OFF);
}