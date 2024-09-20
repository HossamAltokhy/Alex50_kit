#include "mTimer.h"
#include <avr/io.h>


void init_Timer0(int mode, int Prescalar){
    switch(mode){
        case TIMER0_NORMAL:
            TCCR0 &= ~((1<<WGM01)|(1<<WGM00));
            break;
        case TIMER0_CTC:
            TCCR0 &= ~(1<<WGM00);
            TCCR0 |= (1<<WGM01);
            break;
        case TIMER0_PWM:
            TCCR0 &= ~(1<<WGM01);
            TCCR0 |= (1<<WGM00);
            break;
        case TIMER0_FPWM:
            TCCR0 |= ((1<<WGM01)|(1<<WGM00));
            break;
    }
    
    TCCR0 |= Prescalar;
    
}


void Timer0_OVF_Enable(){
    TIMSK |= (1<<TOIE0);
}
void Timer0_OC_Enable(){
    TIMSK |= (1<<OCIE0);
}
