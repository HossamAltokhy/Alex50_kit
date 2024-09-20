/* 
 * File:   mTimer.h
 * Author: hossa
 *
 * Created on September 20, 2024, 4:31 PM
 */

#ifndef MTIMER_H
#define	MTIMER_H


#define TIMER0_NORMAL   0
#define TIMER0_CTC      1
#define TIMER0_PWM      2
#define TIMER0_FPWM     3



#define TIMER0_OFF          0
#define TIMER0_No_PRE       1
#define TIMER0_PRE_8        2
#define TIMER0_PRE_64       3
#define TIMER0_PRE_256      4
#define TIMER0_PRE_1024     5
#define TIMER0_EDGE_FALLING 6
#define TIMER0_EDGE_RISING  7


void init_Timer0(int mode, int Prescalar);

void Timer0_OVF_Enable();
void Timer0_OC_Enable();


#endif	/* MTIMER_H */

