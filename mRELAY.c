#include <avr/io.h>
#include "mDIO.h"
#include "mRELAY.h"


void init_RELAY(){
    setPORTA_PIN_DIR(RELAY, OUTPUT);
}
void RELAY_ON(){
    setPORTA_PIN(RELAY,ON);
}
void RELAY_OFF(){
    setPORTA_PIN(RELAY,OFF);
}