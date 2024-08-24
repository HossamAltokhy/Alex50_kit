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



void setPORTB_PIN_DIR(int pinNum, int Direction) {

    switch (Direction) {
        case OUTPUT:
            DDRB |= (1 << pinNum);
            break;
        case INPUT:
            DDRB &= ~(1 << pinNum);
            break;

    }
}

void setPORTB_PIN(int pinNum, int state) {
    switch (state) {
        case ON:
            PORTB |= (1<<pinNum);
            break;
        case OFF:
            PORTB &= ~(1<<pinNum);
            break;
    }
}

int  readPORTB_PIN(int pinNUM){
    if(PINB & (1<<pinNUM)){
        return 1;
    }
    else{
        return 0;
    }
}


void setPORTB_DIR(int Direction){
        switch (Direction) {
        case OUTPUT:
            DDRB = 0xFF; // 11111111
            break;
        case INPUT:
            DDRB = 0x00; // 00000000
            break;

    }
}



void setPORTB(int state){
    PORTB = state;
}
int  readPORTB(){
    return PINB;
}


void setPORTC_PIN_DIR(int pinNum, int Direction) {

    switch (Direction) {
        case OUTPUT:
            DDRC |= (1 << pinNum);
            break;
        case INPUT:
            DDRC &= ~(1 << pinNum);
            break;

    }
}

void setPORTC_PIN(int pinNum, int state) {
    switch (state) {
        case ON:
            PORTC |= (1<<pinNum);
            break;
        case OFF:
            PORTC &= ~(1<<pinNum);
            break;
    }
}

int  readPORTC_PIN(int pinNUM){
    if(PINC & (1<<pinNUM)){
        return 1;
    }
    else{
        return 0;
    }
}


void setPORTC_DIR(int Direction){
        switch (Direction) {
        case OUTPUT:
            DDRC = 0xFF; // 11111111
            break;
        case INPUT:
            DDRC = 0x00; // 00000000
            break;

    }
}



void setPORTC(int state){
    PORTC = state;
}
int  readPORTC(){
    return PINC;
}


void setPORTD_PIN_DIR(int pinNum, int Direction) {

    switch (Direction) {
        case OUTPUT:
            DDRD |= (1 << pinNum);
            break;
        case INPUT:
            DDRD &= ~(1 << pinNum);
            break;

    }
}

void setPORTD_PIN(int pinNum, int state) {
    switch (state) {
        case ON:
            PORTD |= (1<<pinNum);
            break;
        case OFF:
            PORTD &= ~(1<<pinNum);
            break;
    }
}

int  readPORTD_PIN(int pinNUM){
    if(PIND & (1<<pinNUM)){
        return 1;
    }
    else{
        return 0;
    }
}


void setPORTD_DIR(int Direction){
        switch (Direction) {
        case OUTPUT:
            DDRD = 0xFF; // 11111111
            break;
        case INPUT:
            DDRD = 0x00; // 00000000
            break;

    }
}



void setPORTD(int state){
    PORTD = state;
}
int  readPORTD(){
    return PIND;
}
