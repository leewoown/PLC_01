/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1754633354_1_
#define _BUR_1754633354_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum StateMa_Enum
{	vkSYSTEM_INITIAL = 0,
	vkSYSTEM_READY = 1,
	vkSYSTEM_STANDBY = 2,
	vkSYSTEM_RUN = 3,
	vkSYSTEM_ALARM = 4,
	vkSYSTEM_FAULT = 5,
	vkSYSTEM_PROTECT = 6,
	vkSYSTEM_STOP = 7,
	vkSYSTEM_RESET = 8
} StateMa_Enum;

typedef enum WakeUpStepMa_Enum
{	vkWAKEUP_INITIAL,
	vkWAKEUP_RACK1,
	vkWAKEUP_RACK2,
	vkWAKEUP_RACK3,
	vkWAKEUP_RACK4,
	vkWAKEUP_NRLY,
	vkWAKEUP_PRORLY_ON,
	vkWAKEUP_DELAYTIME1,
	vkWAKEUP_PRLY,
	vkWAKEUP_DELAYTIME2,
	vkWAKEUP_PRORLY_OFF,
	vkWAKEUP_TIMERESET
} WakeUpStepMa_Enum;

typedef enum StopStepMa_Enum
{	vkSTOP_INITIAL,
	vkSTOP_NRLY,
	vkSTOP_DELAYTIME1,
	vkSTOP_PRLY,
	vkSTOP_DELAYTIME2,
	vkSTOP_RACK1,
	vkSTOP_RACK2,
	vkSTOP_RACK3,
	vkSTOP_RACK4,
	vkSTOP_TIMERESET
} StopStepMa_Enum;

typedef struct QLog_areas
{	unsigned long ReadA;
	unsigned long ReadB;
	unsigned long WriteA;
	unsigned long WriteB;
	unsigned long ReadUnit;
	unsigned long WriteUnit;
} QLog_areas;

typedef struct gCommStatus_typ
{	plcbit bActive;
	plcbit bTransmitting;
	plcbit bError;
} gCommStatus_typ;

typedef struct gComm_typ
{	struct gCommStatus_typ CAN1;
	struct gCommStatus_typ CAN2;
	struct gCommStatus_typ ModTCPM;
	struct gCommStatus_typ ModTCPS;
	struct gCommStatus_typ ModRTUM;
} gComm_typ;

typedef struct gSignalCheckType
{	plcbit Can_HardwareCheck1;
	plcbit Can_HardwareCheck2;
	plcbit Can_ReceiveCheck;
	plcbit Can_SendCheck;
	plcbit TCP_Check;
	plcbit RS485_Check;
} gSignalCheckType;

typedef struct SysBMS_Typ
{	plcbit ProRlyAux;
	plcbit NRlyAux;
	plcbit PRlyAux;
	plcbit EMSRlyAux;
	plcbit EMSRlyAux_BMP;
	plcbit GasDetectorAux;
	plcbit WaterCoolingAux;
	plcbit FireDetectorAux;
	plcbit PowerLamp;
	plcbit Buzzer;
	plcbit PRly;
	plcbit NRly;
	plcbit ProRly;
	plcbit WakeUpSig;
	plcbit ResetSig;
	plcbit ProtectCheckSig;
	plcbit RackInfoCheckSig;
	plcbit StopSig;
	plcbit AlarmSig;
	plcbit FaultSig;
	plcbit ProtectSig;
	plcbit BuzzerSig;
	plcbit DeviceloadingDone;
} SysBMS_Typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Global.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1754633354_1_ */

