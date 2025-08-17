/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1755400020_29_
#define _BUR_1755400020_29_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
 #define COILS_NUM_MINUS_1 1U
 #define REGITSTER_NUM_MINUS_1 96U
 #define COILS_NUM 2U
 #define REGITSTER_NUM 97U
#else
 _LOCAL_CONST unsigned char COILS_NUM_MINUS_1;
 _LOCAL_CONST unsigned char REGITSTER_NUM_MINUS_1;
 _LOCAL_CONST unsigned char COILS_NUM;
 _LOCAL_CONST unsigned char REGITSTER_NUM;
#endif


/* Variables */
_BUR_LOCAL signed short HandlingData2[97];
_BUR_LOCAL plcbit HandlingData1[2];
_BUR_LOCAL struct ModbusCtrlType ModbusCtrl;
_BUR_LOCAL plcbit instruction_ready;
_BUR_LOCAL plcbit check_status;
_BUR_LOCAL unsigned char mb_exception;
_BUR_LOCAL unsigned short fub_status;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_MODBUS/ModbusPMS/Variables.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1755400020_29_ */

