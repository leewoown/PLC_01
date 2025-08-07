#ifndef __AS__TYPE_
#define __AS__TYPE_
typedef struct {
	unsigned char bit0  : 1;
	unsigned char bit1  : 1;
	unsigned char bit2  : 1;
	unsigned char bit3  : 1;
	unsigned char bit4  : 1;
	unsigned char bit5  : 1;
	unsigned char bit6  : 1;
	unsigned char bit7  : 1;
} _1byte_bit_field_;

typedef struct {
	unsigned short bit0  : 1;
	unsigned short bit1  : 1;
	unsigned short bit2  : 1;
	unsigned short bit3  : 1;
	unsigned short bit4  : 1;
	unsigned short bit5  : 1;
	unsigned short bit6  : 1;
	unsigned short bit7  : 1;
	unsigned short bit8  : 1;
	unsigned short bit9  : 1;
	unsigned short bit10 : 1;
	unsigned short bit11 : 1;
	unsigned short bit12 : 1;
	unsigned short bit13 : 1;
	unsigned short bit14 : 1;
	unsigned short bit15 : 1;
} _2byte_bit_field_;

typedef struct {
	unsigned long bit0  : 1;
	unsigned long bit1  : 1;
	unsigned long bit2  : 1;
	unsigned long bit3  : 1;
	unsigned long bit4  : 1;
	unsigned long bit5  : 1;
	unsigned long bit6  : 1;
	unsigned long bit7  : 1;
	unsigned long bit8  : 1;
	unsigned long bit9  : 1;
	unsigned long bit10 : 1;
	unsigned long bit11 : 1;
	unsigned long bit12 : 1;
	unsigned long bit13 : 1;
	unsigned long bit14 : 1;
	unsigned long bit15 : 1;
	unsigned long bit16 : 1;
	unsigned long bit17 : 1;
	unsigned long bit18 : 1;
	unsigned long bit19 : 1;
	unsigned long bit20 : 1;
	unsigned long bit21 : 1;
	unsigned long bit22 : 1;
	unsigned long bit23 : 1;
	unsigned long bit24 : 1;
	unsigned long bit25 : 1;
	unsigned long bit26 : 1;
	unsigned long bit27 : 1;
	unsigned long bit28 : 1;
	unsigned long bit29 : 1;
	unsigned long bit30 : 1;
	unsigned long bit31 : 1;
} _4byte_bit_field_;
#endif

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

#ifndef __AS__TYPE_gSignalCheckType
#define __AS__TYPE_gSignalCheckType
typedef struct gSignalCheckType
{	plcbit Can_HardwareCheck1;
	plcbit Can_HardwareCheck2;
	plcbit Can_ReceiveCheck;
	plcbit Can_SendCheck;
	plcbit TCP_Check;
	plcbit RS485_Check;
} gSignalCheckType;
#endif

_BUR_LOCAL unsigned short fub_status;
_BUR_LOCAL unsigned char mb_exception;
_BUR_LOCAL plcbit check_status;
_BUR_LOCAL plcbit instruction_ready;
_BUR_LOCAL ModbusCtrlType ModbusCtrl;
_BUR_LOCAL unsigned char COILS_NUM;
_BUR_LOCAL unsigned char COILS_NUM_MINUS_1;
_GLOBAL gSignalCheckType gSignalCheck;
_GLOBAL unsigned short ERR_OK;
_GLOBAL unsigned short ERR_FUB_BUSY;
_GLOBAL unsigned long mbMFC_WRITE_MULTIPLE_REGISTERS;
