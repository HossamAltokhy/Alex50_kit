/* 
 * File:   mRELAY.h
 * Author: hossa
 *
 * Created on August 24, 2024, 2:18 PM
 */

#ifndef MRELAY_H
#define	MRELAY_H
#include <avr/io.h>

#define RELAY PA2

void init_RELAY();
void RELAY_ON();
void RELAY_OFF();
#endif	/* MRELAY_H */

