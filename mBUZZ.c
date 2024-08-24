#include <avr/io.h>
#include "mBUZZ.h"
#include "mDIO.h"

void init_BUZZER(){
    setPORTA_PIN_DIR(BUZZER, OUTPUT);
}

void BUZZER_ON(){
    setPORTA_PIN(BUZZER, ON);
}

void BUZZER_OFF(){
    setPORTA_PIN(BUZZER, OFF);
}
