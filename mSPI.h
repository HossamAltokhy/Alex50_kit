/* 
 * File:   mSPI.h
 * Author: hossa
 *
 * Created on September 28, 2024, 2:35 PM
 */

#ifndef MSPI_H
#define	MSPI_H

#define SPI_PR_4      0
#define SPI_PR_16     1
#define SPI_PR_64     2
#define SPI_PR_128    3

#define SPI_MODE_MASTER    1
#define SPI_MODE_SLAVE     0

#define SS      PB4
#define MOSI    PB5
#define MISO    PB6
#define SCK     PB7



void init_SPI(char SPI_MODE, char SPI_PR);
void SPI_write(char data);
char SPI_read();



#endif	/* MSPI_H */

