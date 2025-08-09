/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1754623143_22_
#define _BUR_1754623143_22_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum ArCanSend_steps
{	STEP_ERROR = 255,
	STEP_DEINIT = 254,
	STEP_INIT_SEND_FRAME = 10,
	STEP_WAIT_CMD = 3,
	STEP_INIT_SENDER = 2,
	STEP_INIT_BAUDRATE = 1,
	STEP_WAIT = 0
} ArCanSend_steps;

typedef struct ArCanSend_typ
{	enum ArCanSend_steps step;
	unsigned long ID;
	struct ArCanSetBaudrate ArCanSetBaudrate_0;
	struct ArCanSend ArCanSend_0;
	plcstring senderDeviceName[81];
	unsigned short iterationCounter;
	unsigned long successCount;
	unsigned long waitCounter;
	unsigned short errorCount;
	signed long lastError;
	plcbit enable;
	unsigned long Baudrate;
	unsigned long Format;
} ArCanSend_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_CAN/CANTxPMS/ArCanSend.typ\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1754623143_22_ */

