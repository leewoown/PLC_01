/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1754614240_9_
#define _BUR_1754614240_9_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
 #define RACK_MAXNUM_MINUS_1 3U
 #define RACK_MAXNUM 4U
 #define RACK4 3U
 #define RACK3 2U
 #define RACK2 1U
 #define RACK1 0U
 #define PASSWORD "1234"
#else
 _GLOBAL_CONST unsigned char RACK_MAXNUM_MINUS_1;
 _GLOBAL_CONST unsigned char RACK_MAXNUM;
 _GLOBAL_CONST unsigned char RACK4;
 _GLOBAL_CONST unsigned char RACK3;
 _GLOBAL_CONST unsigned char RACK2;
 _GLOBAL_CONST unsigned char RACK1;
 _GLOBAL_CONST plcstring PASSWORD[17];
#endif


/* Variables */
_GLOBAL struct LAMP_typ LAMP;
_GLOBAL struct PMS_typ System_HMI;
_GLOBAL struct PMS_typ PMS;
_GLOBAL struct Dialog_typ HMI_Dialog;
_GLOBAL_RETAIN plcstring HMI_AlarmName[22][31];
_GLOBAL_RETAIN struct Alarm_typ HMI_Alarm;
_GLOBAL struct HMI_typ HMI;
_GLOBAL struct BSA_typ Rack_HMI;
_GLOBAL struct SubBMS_Calculator_type SubBMS_Calculator;
_GLOBAL struct SubBMS_type SubBMS_Sim;
_GLOBAL struct SubBMS_type SubBMS;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/gVariable/Variables.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1754614240_9_ */

