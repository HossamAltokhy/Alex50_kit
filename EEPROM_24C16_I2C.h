/* 
 * File:   EEPROM_24C16_I2C.h
 * Author: hossa
 *
 * Created on October 4, 2024, 3:21 PM
 */

#ifndef EEPROM_24C16_I2C_H
#define	EEPROM_24C16_I2C_H



#define EEPROM_24C16N_ADDRESS_W  0xA0  //10100000
#define EEPROM_24C16N_ADDRESS_R  0xA1  //10100001






void init_EEPROM_24C16N();
void EEPROM_24C16N_write(char MemLocation, char data);
char EEPROM_24C16N_read(char MemLocation);


#endif	/* EEPROM_24C16_I2C_H */

