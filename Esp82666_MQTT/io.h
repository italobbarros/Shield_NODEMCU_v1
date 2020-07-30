#ifndef IO_H_
#define IO_H_

#include "arduino.h"
/*
#define bitSet(arg,bit) ((arg) |= (1<<bit))
#define bitClr(arg,bit) ((arg) &= ~(1<<bit)) 
#define bitFlp(arg,bit) ((arg) ^= (1<<bit)) 
#define bitTst(arg,bit) ((arg) & (1<<bit)) 

#define OUTPUT 0
#define INPUT  1

#define LOW 0
#define HIGH 1

void pinMode(int pin, int type);
void digitalWrite(int pin, int value);
int digitalRead(int pin);

*/

#define SO_CLK_PIN   D1
#define SO_EN_PIN    D2
#define SO_DATA_PIN  D3
//#define TX_PIN        1
//#define RX_PIN        0


#endif /* IO_H_ */
