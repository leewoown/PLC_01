/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1754540187_33_
#define _BUR_1754540187_33_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct TimeSplitType
{	plcstring Day[11];
	plcstring Time[6];
} TimeSplitType;

typedef struct TimeType
{	struct DTGetTime DTGetTime_0;
	plcstring Original[31];
	plcstring Total[16];
	struct TimeSplitType Split;
} TimeType;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/HMI/HMI_DataParsing/Types.typ\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1754540187_33_ */

