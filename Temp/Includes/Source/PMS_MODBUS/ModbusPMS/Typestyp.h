/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1754614241_30_
#define _BUR_1754614241_30_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct Initial_ParameterType
{	plcstring ModbusStation[21];
	unsigned short Coils_startAddress;
	unsigned short register_StartAddress;
	unsigned long FunctionNum;
	unsigned char RegisterNum;
	unsigned char CoilsNum;
} Initial_ParameterType;

typedef struct ModbusDataType
{	plcbit Coils[2];
	unsigned short Register[128];
} ModbusDataType;

typedef struct ModbusCtrlType
{	struct Initial_ParameterType Init_Parameter;
	struct mbSlWordGet Read_Holding_Registers;
	struct mbSlWordPut Write_Multiple_Registers;
	struct mbSlBoolGet Read_Coils;
	struct mbSlBoolPut Write_Multiple_Coils;
	struct ModbusDataType Data;
} ModbusCtrlType;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Source/PMS_MODBUS/ModbusPMS/Types.typ\\\" scope \\\"local\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/Source/PMS_MODBUS/ModbusPMS/Variables.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1754614241_30_ */

