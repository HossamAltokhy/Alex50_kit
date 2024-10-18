#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>


void EEPROM_write(short ADD, char data){
    while(EECR & (1<<EEWE));
    
    EEARL = (char) ADD;
    EEARH = ADD>>8;
    
    EEDR = data;
    EECR |= (1<<EEMWE);
    EECR |= (1<<EEWE);
    _delay_ms(50);
    
}
char EEPROM_read(short ADD){
    while(EECR & (1<<EEWE));
    
    EEARL = (char) ADD;
    EEARH = ADD>>8;
    
    EECR |= (1<<EERE);
    
    return EEDR;
}

