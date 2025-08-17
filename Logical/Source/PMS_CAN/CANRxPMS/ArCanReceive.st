
PROGRAM _INIT
	
	ActArCanReceiver;
	ArCanReceiver.enable				:= TRUE;
	ArCanReceiver.receiverDeviceName 	:= 'IF6.ST6.IF1';       (* for X20CS1070 *)
	ArCanReceiver.id					:= 0; 
	ArCanReceiver.idMask				:= arCAN_RECEIVE_ALL;  // or configure IDMask
	ArCanReceiver.format				:= arCAN_11BIT;  // or arCAN_29BIT
	ArCanReceiver.queueSize				:= 128;
	ArCanReceiver.ArCanSetBitTimingRegisters_0.Register0 := 0;
	ArCanReceiver.ArCanSetBitTimingRegisters_0.Register1 := 16#1C;
	
	(**********************	 CAN Baud rate Register Value	*************************)
	(********************************************************************************)
	(* 	  1 000 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#14	*)
	(* 		800 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#16	*)
	(* 		500 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#1C	*)
	(* 		250 000 bit/s    >>		Register0 = 16#01	||		Register1 = 16#1C	*)
	(* 		125 000 bit/s    >>		Register0 = 16#03	||		Register1 = 16#1C	*)
	(* 		100 000 bit/s    >>		Register0 = 16#04	||		Register1 = 16#1C	*)
	(* 		050 000 bit/s    >>		Register0 = 16#09	||		Register1 = 16#1C	*)
	(* 		020 000 bit/s    >>		Register0 = 16#18	||		Register1 = 16#1C	*)
	(* 		010 000 bit/s    >>		Register0 = 16#31	||		Register1 = 16#1C	*)
	(********************************************************************************)
	(********************************************************************************)
	
END_PROGRAM

PROGRAM _CYCLIC	
	
	(* Action for ArCanReceiver *)
	ActArCanReceiver;
	(***********************************************************)
	(* Customize the received data *)
	// ArCanReceiver.ArCanReceiver_0.ReceivedFrame; //Data received
	IF (ArCanReceiver.ArCanReceiver_0.NewDataValid) THEN

		CASE ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID OF
			
			16#700: // PMS 
			
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#700 THEN
				memcpy(ADR(PMS.PMS.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(PMS.PMS.Value));
			END_IF;
						
		END_CASE;
		
	END_IF
	
	ActPMSDATARxParshing;
	
	(***********************************************************)
	(* CAN Communication Status *)
	(***********************************************************)
	
	IF ArCanReceiver.ArCanReceiver_0.Error THEN
		gComm.CAN1.bError	:= TRUE;
		gComm.CAN1.bActive	:= FALSE;
		gComm.CAN1.bTransmitting	:= FALSE;
	ELSIF ArCanReceiver.ArCanReceiver_0.Active AND ArCanReceiver.ArCanReceiver_0.Busy THEN
		gComm.CAN1.bError	:= FALSE;
		gComm.CAN1.bActive	:= TRUE;
	
		IF (countCANSuccessOld <> ArCanReceiver.successCount) THEN
			countCANSuccessOld	:= ArCanReceiver.successCount;
			gComm.CAN1.bTransmitting	:= TRUE;
			countTime	:= 0;
		ELSE
			countTime	:= countTime + 1;
			IF (countTime > 50) THEN
				gComm.CAN1.bTransmitting	:= FALSE;
				countTime	:= 0;
			END_IF
		END_IF
	ELSE
		gComm.CAN1.bError	:= FALSE;
		gComm.CAN1.bActive	:= FALSE;
		gComm.CAN1.bTransmitting	:= FALSE;
	END_IF
	(***********************************************************)
	
	
END_PROGRAM





PROGRAM _EXIT
	
	(* Deinitialization of the receiver *)
	ArCanReceiver.ArCanReceiver_0.Enable	:= FALSE;
	ArCanReceiver.ArCanReceiver_0();
	
END_PROGRAM
