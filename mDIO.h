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


// PIN level
void setPORTB_PIN_DIR(int pinNum, int Direction);
void setPORTB_PIN(int pinNum, int state);
int  readPORTB_PIN(int pinNUM);
// PORT Level
void setPORTB_DIR(int Direction);
void setPORTB(int state);
int  readPORTB();


// PIN level
void setPORTC_PIN_DIR(int pinNum, int Direction);
void setPORTC_PIN(int pinNum, int state);
int  readPORTC_PIN(int pinNUM);
// PORT Level
void setPORTC_DIR(int Direction);
void setPORTC(int state);
int  readPORTC();


// PIN level
void setPORTD_PIN_DIR(int pinNum, int Direction);
void setPORTD_PIN(int pinNum, int state);
int  readPORTD_PIN(int pinNUM);
// PORT Level
void setPORTD_DIR(int Direction);
void setPORTD(int state);
int  readPORTD();



#endif	/* MDIO_H */

