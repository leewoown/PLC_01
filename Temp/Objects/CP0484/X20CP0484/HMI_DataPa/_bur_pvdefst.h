struct DTGetTime
{	unsigned short status;
	plcdt DT1;
	plcbit enable;
};
_BUR_PUBLIC void DTGetTime(struct DTGetTime* inst);
#ifndef __AS__TYPE_TimeSplitType
#define __AS__TYPE_TimeSplitType
typedef struct TimeSplitType
{	plcstring Day[11];
	plcstring Time[6];
} TimeSplitType;
#endif

#ifndef __AS__TYPE_TimeType
#define __AS__TYPE_TimeType
typedef struct TimeType
{	struct DTGetTime DTGetTime_0;
	plcstring Original[31];
	plcstring Total[16];
	TimeSplitType Split;
} TimeType;
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
_BUR_LOCAL plcstring strStyleLED_CAN_1[41];
_BUR_LOCAL unsigned char countTime_0;
_BUR_LOCAL struct TON TON_0;
_BUR_LOCAL TimeType Timestamp;
_BUR_LOCAL signed short LoopNum;
_BUR_LOCAL signed short LoopCount;
