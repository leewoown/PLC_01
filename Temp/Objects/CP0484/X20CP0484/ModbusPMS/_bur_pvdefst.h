#ifndef __AS__TYPE_Initial_ParameterType
#define __AS__TYPE_Initial_ParameterType
typedef struct Initial_ParameterType
{	plcstring ModbusStation[21];
	unsigned short Coils_startAddress;
	unsigned short register_StartAddress;
	unsigned long FunctionNum;
	unsigned char RegisterNum;
	unsigned char CoilsNum;
} Initial_ParameterType;
#endif

struct mbSlWordGet
{	unsigned short startAddress;
	unsigned char nrOfItems;
	unsigned short status;
	plcstring(* station)[2];
	unsigned short(* data)[128];
	plcbit enable;
};
_BUR_PUBLIC void mbSlWordGet(struct mbSlWordGet* inst);
struct mbSlWordPut
{	unsigned short startAddress;
	unsigned char nrOfItems;
	unsigned short status;
	plcstring(* station)[2];
	unsigned short(* data)[128];
	plcbit enable;
};
_BUR_PUBLIC void mbSlWordPut(struct mbSlWordPut* inst);
struct mbSlBoolGet
{	unsigned short startAddress;
	unsigned char nrOfItems;
	unsigned short status;
	plcstring(* station)[2];
	plcbit(* data)[128];
	plcbit enable;
};
_BUR_PUBLIC void mbSlBoolGet(struct mbSlBoolGet* inst);
struct mbSlBoolPut
{	unsigned short startAddress;
	unsigned char nrOfItems;
	unsigned short status;
	plcstring(* station)[2];
	plcbit(* data)[128];
	plcbit enable;
};
_BUR_PUBLIC void mbSlBoolPut(struct mbSlBoolPut* inst);
#ifndef __AS__TYPE_ModbusDataType
#define __AS__TYPE_ModbusDataType
typedef struct ModbusDataType
{	plcbit Coils[2];
	unsigned short Register[128];
} ModbusDataType;
#endif

#ifndef __AS__TYPE_ModbusCtrlType
#define __AS__TYPE_ModbusCtrlType
typedef struct ModbusCtrlType
{	Initial_ParameterType Init_Parameter;
	struct mbSlWordGet Read_Holding_Registers;
	struct mbSlWordPut Write_Multiple_Registers;
	struct mbSlBoolGet Read_Coils;
	struct mbSlBoolPut Write_Multiple_Coils;
	ModbusDataType Data;
} ModbusCtrlType;
#endif

_BUR_LOCAL unsigned short fub_status;
_BUR_LOCAL unsigned char mb_exception;
_BUR_LOCAL plcbit check_status;
_BUR_LOCAL plcbit instruction_ready;
_BUR_LOCAL ModbusCtrlType ModbusCtrl;
_BUR_LOCAL plcbit HandlingData1[2];
_BUR_LOCAL signed short HandlingData2[97];
_BUR_LOCAL unsigned char REGITSTER_NUM;
_BUR_LOCAL unsigned char COILS_NUM;
_BUR_LOCAL unsigned char REGITSTER_NUM_MINUS_1;
_BUR_LOCAL unsigned char COILS_NUM_MINUS_1;
