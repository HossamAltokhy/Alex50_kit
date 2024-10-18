/* 
 * File:   mTWI.h
 * Author: hossa
 *
 * Created on October 4, 2024, 3:18 PM
 */

#ifndef MTWI_H
#define	MTWI_H

#define SCL_100KHz    0
#define SCL_400KHz    1
#define myADDRESS   0x07

// SLAVE ADDREE to Write 0000100+0   7bit address
// SLAVE ADDREE to Read  0000100+1   7bit address

#define SLA_W    0x08
#define SLA_R    0x09

void init_TWI(char TWI_ADDRESS, char SCL_FREQ);

void TWI_MT(char SLA_ADDRESS, char data);
char TWI_SR();

char TWI_MR(char SLA_ADDRESS);
void TWI_ST(char data);

#endif	/* MTWI_H */

