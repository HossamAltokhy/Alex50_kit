#include <avr/io.h>
#include "mBUTTON.h"
#include "mDIO.h"



void init_BUTTONs(){
    setPORTB_PIN_DIR(BTN0, INPUT);
    setPORTD_PIN_DIR(BTN1, INPUT);
    setPORTD_PIN_DIR(BTN2, INPUT);
}

char isPressed(char BUTTON){
    switch(BUTTON){
        case BTN0:
            return readPORTB_PIN(BTN0);
            break;
        case BTN1:
        case BTN2:
            return readPORTD_PIN(BUTTON);
            break;
            
    }
    
//#error "You entered invalid button value";
    return -1;
}
