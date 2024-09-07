/* 
 * File:   mINT.h
 * Author: hossa
 *
 * Created on September 7, 2024, 2:48 PM
 */

#ifndef MINT_H
#define	MINT_H


#define INT_MODE_RISING        3
#define INT_MODE_FALLING       2
#define INT_MODE_ANY_CHANGE    1
#define INT_MODE_LOW_LEVEL     0

void init_INT0(int INT_MODE);
void init_INT1(int INT_MODE);

void INT0_selectMODE(int INT_MODE);
void INT0_enable();


void INT1_selectMODE(int INT_MODE);
void INT1_enable();

void INT2_enable();

void INT0_disable();
void INT1_disable();
void INT2_disable();



#endif	/* MINT_H */

