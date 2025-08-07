#ifndef __AS__TYPE_ArCanSend_steps
#define __AS__TYPE_ArCanSend_steps
typedef enum ArCanSend_steps
{	STEP_ERROR = 255,
	STEP_DEINIT = 254,
	STEP_INIT_SEND_FRAME = 10,
	STEP_WAIT_CMD = 3,
	STEP_INIT_SENDER = 2,
	STEP_INIT_BAUDRATE = 1,
	STEP_WAIT = 0,
} ArCanSend_steps;
#endif

struct ArCanSetBaudrate
{	plcstring DeviceName[128];
	unsigned long Baudrate;
	signed long StatusID;
	unsigned long Internal[32];
	plcbit Execute;
	plcbit Done;
	plcbit Busy;
	plcbit Error;
};
_BUR_PUBLIC void ArCanSetBaudrate(struct ArCanSetBaudrate* inst);
#ifndef __AS__TYPE_ArCanFrameType
#define __AS__TYPE_ArCanFrameType
typedef struct ArCanFrameType
{	plcbyte Data[64];
	unsigned long DataLength;
	unsigned long ID;
	unsigned long Format;
} ArCanFrameType;
#endif

struct ArCanSend
{	plcstring DeviceName[128];
	ArCanFrameType Frame;
	signed long StatusID;
	unsigned long NumberOfFreeBuffers;
	unsigned long Internal[32];
	plcbit Enable;
	plcbit SendFrame;
	plcbit Busy;
	plcbit Active;
	plcbit Error;
};
_BUR_PUBLIC void ArCanSend(struct ArCanSend* inst);
#ifndef __AS__TYPE_ArCanSend_typ
#define __AS__TYPE_ArCanSend_typ
typedef struct ArCanSend_typ
{	ArCanSend_steps step;
	unsigned long ID;
	struct ArCanSetBaudrate ArCanSetBaudrate_0;
	struct ArCanSend ArCanSend_0;
	plcstring senderDeviceName[81];
	unsigned short iterationCounter;
	unsigned long successCount;
	unsigned long waitCounter;
	unsigned short errorCount;
	signed long lastError;
	plcbit enable;
	unsigned long Baudrate;
	unsigned long Format;
} ArCanSend_typ;
#endif

_BUR_LOCAL ArCanSend_typ ArCanSender;
_BUR_LOCAL unsigned char step;
_BUR_LOCAL unsigned long successCountOld;
_BUR_LOCAL unsigned long timerCount;
