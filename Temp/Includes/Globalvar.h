/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1755400020_2_
#define _BUR_1755400020_2_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
 #define ALARM_NUMBER_MINUS_1 17U
 #define ALARM_NUMBER 18U
#else
 _GLOBAL_CONST unsigned char ALARM_NUMBER_MINUS_1;
 _GLOBAL_CONST unsigned char ALARM_NUMBER;
#endif


/* Variables */
_GLOBAL unsigned char RackEnable_Count;
_GLOBAL enum StateMa_Enum StateMa;
_GLOBAL struct SysBMS_Typ Sys;
_GLOBAL struct gSignalCheckType gSignalCheck;
_GLOBAL struct gComm_typ gComm;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Global.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1755400020_2_ */

