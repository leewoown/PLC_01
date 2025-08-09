/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1754623143_3_
#define _BUR_1754623143_3_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct MbMaster_typ
{	struct MBMaster MBMaster_0;
	struct MBMClose MBMClose_0;
	struct MBMCmd MBMCmd_0;
	struct MBMOpen MBMOpen_0;
	plcbit Auto;
	unsigned short ReadData[10];
	unsigned short WriteData[10];
	plcbit ReadDataTrigger;
	plcbit WriteDataTrigger;
} MbMaster_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MbRTU/MbRTU.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1754623143_3_ */

