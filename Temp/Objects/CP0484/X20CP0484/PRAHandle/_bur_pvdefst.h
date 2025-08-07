#ifndef __AS__TYPE_WakeUpStepMa_Enum
#define __AS__TYPE_WakeUpStepMa_Enum
typedef enum WakeUpStepMa_Enum
{	vkWAKEUP_INITIAL = 0,
	vkWAKEUP_RACK1 = 1,
	vkWAKEUP_RACK2 = 2,
	vkWAKEUP_RACK3 = 3,
	vkWAKEUP_RACK4 = 4,
	vkWAKEUP_NRLY = 5,
	vkWAKEUP_PRORLY_ON = 6,
	vkWAKEUP_DELAYTIME1 = 7,
	vkWAKEUP_PRLY = 8,
	vkWAKEUP_DELAYTIME2 = 9,
	vkWAKEUP_PRORLY_OFF = 10,
	vkWAKEUP_TIMERESET = 11,
} WakeUpStepMa_Enum;
#endif

#ifndef __AS__TYPE_StopStepMa_Enum
#define __AS__TYPE_StopStepMa_Enum
typedef enum StopStepMa_Enum
{	vkSTOP_INITIAL = 0,
	vkSTOP_NRLY = 1,
	vkSTOP_DELAYTIME1 = 2,
	vkSTOP_PRLY = 3,
	vkSTOP_DELAYTIME2 = 4,
	vkSTOP_RACK1 = 5,
	vkSTOP_RACK2 = 6,
	vkSTOP_RACK3 = 7,
	vkSTOP_RACK4 = 8,
	vkSTOP_TIMERESET = 9,
} StopStepMa_Enum;
#endif

struct TON
{	plctime PT;
	plctime ET;
	plctime StartTime;
	unsigned long Restart;
	plcbit IN;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void TON(struct TON* inst);
_BUR_LOCAL unsigned char i;
_BUR_LOCAL struct TON PRATimerProRlyOn;
_BUR_LOCAL struct TON PRATimerProRlyOff;
_BUR_LOCAL struct TON PRATimerWakeUpOff;
_BUR_LOCAL struct TON PRATimerSeqErr;
_BUR_LOCAL plcbit PRAProtectCheckDone;
_BUR_LOCAL plcbit PRARackResetDone;
_BUR_LOCAL unsigned char PRARackResetCount;
_BUR_LOCAL plcbit PRAWakeUpDone;
_BUR_LOCAL plcbit PRAStopDone;
_BUR_LOCAL WakeUpStepMa_Enum WakeUpStep;
_BUR_LOCAL StopStepMa_Enum StopStep;
