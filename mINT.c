
#include "mINT.h"
#include <avr/io.h>



void init_INT0(int INT_MODE) {
    INT0_selectMODE(INT_MODE);
    INT0_enable();
}

void init_INT1(int INT_MODE) {
    INT1_selectMODE(INT_MODE);
    INT1_enable();
}

void INT0_selectMODE(int INT_MODE) {
    // MCUCR to select Mode for INT0
    MCUCR |= INT_MODE;

}

void INT1_selectMODE(int INT_MODE) {
    // MCUCR to select Mode for INT1
    MCUCR |= INT_MODE << ISC10;

}

void INT0_enable() {
    GICR |= (1 << INT0);
}

void INT1_enable() {
    GICR |= (1 << INT1);
}

void INT2_enable() {
    GICR |= (1 << INT2);
}

void INT0_disable() {
    GICR &= ~(1 << INT0);
}
void INT1_disable() {
    GICR &= ~(1 << INT1);
}
void INT2_disable() {
    GICR &= ~(1 << INT2);
}
