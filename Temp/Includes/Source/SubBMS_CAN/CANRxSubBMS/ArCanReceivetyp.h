/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1754623143_18_
#define _BUR_1754623143_18_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum ArCanReceive_steps
{	STEP_ERROR = 255,
	STEP_DEINIT = 254,
	STEP_WAIT_FOR_DATA = 10,
	STEP_INIT_RECEIVER = 2,
	STEP_INIT_BAUDRATE = 1,
	STEP_WAIT = 0
} ArCanReceive_steps;

typedef struct ArCanReceive_typ
{	enum ArCanReceive_steps step;
	struct ArCanSetBitTimingRegisters ArCanSetBitTimingRegisters_0;
	struct ArCanReceive ArCanReceiver_0;
	plcstring receiverDeviceName[81];
	unsigned long receivedIterationCounter;
	unsigned long lastReceiveTimestamp;
	unsigned long lostFrames;
	unsigned long successCount;
	unsigned short errorCount;
	signed long lastError;
	plcbit enable;
	unsigned long id;
	unsigned long idMask;
	unsigned long format;
	unsigned long queueSize;
} ArCanReceive_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/SubBMS_CAN/CANRxSubBMS/ArCanReceive.typ\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1754623143_18_ */

