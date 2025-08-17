/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1755400020_15_
#define _BUR_1755400020_15_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL signed short PRARackEnableCount;
_BUR_LOCAL plcbit PRARackReadyDone;
_BUR_LOCAL plcbit ATRackReadyCheck;
_BUR_LOCAL plcbit PRAReadyReadSig;
_BUR_LOCAL enum StopStepMa_Enum StopStep;
_BUR_LOCAL enum WakeUpStepMa_Enum WakeUpStep;
_BUR_LOCAL plcbit PRAStopDone;
_BUR_LOCAL plcbit PRAWakeUpDone;
_BUR_LOCAL unsigned char PRARackResetCount;
_BUR_LOCAL plcbit PRARackResetDone;
_BUR_LOCAL plcbit PRAProtectCheckDone;
_BUR_LOCAL struct TON PRATimerReset;
_BUR_LOCAL struct TON PRATimerSeqErr;
_BUR_LOCAL struct TON PRATimerPrtErr;
_BUR_LOCAL struct TON PRATimerWakeUpOff;
_BUR_LOCAL struct TON PRATimerProRlyOff;
_BUR_LOCAL struct TON PRATimerProRlyOn;
_BUR_LOCAL unsigned char i;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/PRAHandle/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1755400020_15_ */

