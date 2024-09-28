/* 
 * File:   EEPROM_25LC010A.h
 * Author: hossa
 *
 * Created on September 28, 2024, 2:37 PM
 */

#ifndef EEPROM_25LC010A_H
#define	EEPROM_25LC010A_H

void EEPROM_25LC010A_WREN();
void EEPROM_25LC010A_write(char address, char data);

char EEPROM_25LC010A_read(char address);
void EEPROM_25LC010A_CS(char state);

#endif	/* EEPROM_25LC010A_H */

