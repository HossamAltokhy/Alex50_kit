#include <avr/io.h>
#include "mDIO.h"

void setPORTA_PIN_DIR(int pinNum, int Direction) {

    switch (Direction) {
        case OUTPUT:
            DDRA |= (1 << pinNum);
            break;
        case INPUT:
            DDRA &= ~(1 << pinNum);
            break;

    }
}

void setPORTA_PIN(int pinNum, int state) {
    switch (state) {
        case ON:
            PORTA |= (1<<pinNum);
            break;
        case OFF:
            PORTA &= ~(1<<pinNum);
            break;
    }
}

int  readPORTA_PIN(int pinNUM){
    if(PINA & (1<<pinNUM)){
        return 1;
    }
    else{
        return 0;
    }
}


void setPORTA_DIR(int Direction){
        switch (Direction) {
        case OUTPUT:
            DDRA = 0xFF; // 11111111
            break;
        case INPUT:
            DDRA = 0x00; // 00000000
            break;

    }
}
void setPORTA(int state){
    PORTA = state;
}
int  readPORTA(){
    return PINA;
}
