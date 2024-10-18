/* 
 * File:   mEEPROM.h
 * Author: hossa
 *
 * Created on October 18, 2024, 4:08 PM
 */

#ifndef MEEPROM_H
#define	MEEPROM_H

void EEPROM_write(short ADD, char data);
char EEPROM_read(short ADD);

#endif	/* MEEPROM_H */

