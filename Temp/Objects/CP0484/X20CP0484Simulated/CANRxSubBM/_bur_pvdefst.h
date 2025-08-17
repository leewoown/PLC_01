#ifndef __AS__TYPE_ArCanReceive_steps
#define __AS__TYPE_ArCanReceive_steps
typedef enum ArCanReceive_steps
{	STEP_ERROR = 255,
	STEP_DEINIT = 254,
	STEP_WAIT_FOR_DATA = 10,
	STEP_INIT_RECEIVER = 2,
	STEP_INIT_BAUDRATE = 1,
	STEP_WAIT = 0,
} ArCanReceive_steps;
#endif

struct ArCanSetBitTimingRegisters
{	plcstring DeviceName[128];
	plcbyte Register0;
	plcbyte Register1;
	signed long StatusID;
	unsigned long Internal[32];
	plcbit Execute;
	plcbit Done;
	plcbit Busy;
	plcbit Error;
};
_BUR_PUBLIC void ArCanSetBitTimingRegisters(struct ArCanSetBitTimingRegisters* inst);
#ifndef __AS__TYPE_ArCanFrameType
#define __AS__TYPE_ArCanFrameType
typedef struct ArCanFrameType
{	plcbyte Data[64];
	unsigned long DataLength;
	unsigned long ID;
	unsigned long Format;
} ArCanFrameType;
#endif

#ifndef __AS__TYPE_ArCanTimestampType
#define __AS__TYPE_ArCanTimestampType
typedef struct ArCanTimestampType
{	unsigned long UTCSeconds;
	unsigned long UTCNanoSeconds;
	signed long LocalTime;
} ArCanTimestampType;
#endif

struct ArCanReceive
{	plcstring DeviceName[128];
	unsigned long ID;
	unsigned long IDMask;
	unsigned long Format;
	unsigned long QueueSize;
	signed long StatusID;
	ArCanFrameType ReceivedFrame;
	ArCanTimestampType Timestamp;
	unsigned long NumberOfLostFrames;
	unsigned long Internal[32];
	plcbit Enable;
	plcbit Busy;
	plcbit Active;
	plcbit Error;
	plcbit NewDataValid;
};
_BUR_PUBLIC void ArCanReceive(struct ArCanReceive* inst);
#ifndef __AS__TYPE_ArCanReceive_typ
#define __AS__TYPE_ArCanReceive_typ
typedef struct ArCanReceive_typ
{	ArCanReceive_steps step;
	struct ArCanSetBitTimingRegisters ArCanSetBitTimingRegisters_0;
	struct ArCanReceive ArCanReceiver_0;
	plcstring receiverDeviceName[81];
	unsigned long receivedIterationCounter;
	unsigned long lastReceiveTimestamp;
	unsigned long lostFrames;
	unsigned long successCount;
	unsigned short errorCount;
	signed long lastError;
	plcbit enable;
	unsigned long id;
	unsigned long idMask;
	unsigned long format;
	unsigned long queueSize;
} ArCanReceive_typ;
#endif

_BUR_LOCAL ArCanReceive_typ ArCanReceiver;
_BUR_LOCAL unsigned char countTime;
_BUR_LOCAL unsigned long countCANSuccessOld;
_BUR_LOCAL plcbit CmdSim;
_BUR_LOCAL unsigned short ModuleIndex;
_BUR_LOCAL plcbyte ByteTest[6];
_BUR_LOCAL plcdword DWORDTEST[2];
_BUR_LOCAL float RealTest;
