/* 
 * File:   mDIO.h
 * Author: hossa
 *
 * Created on August 23, 2024, 4:48 PM
 */

#ifndef MDIO_H
#define	MDIO_H

#define OUTPUT  1
#define INPUT   0

#define ON      1
#define OFF     0

// PIN level
void setPORTA_PIN_DIR(int pinNum, int Direction);
void setPORTA_PIN(int pinNum, int state);
int  readPORTA_PIN(int pinNUM);
// PORT Level
void setPORTA_DIR(int Direction);
void setPORTA(int state);
int  readPORTA();

#endif	/* MDIO_H */

