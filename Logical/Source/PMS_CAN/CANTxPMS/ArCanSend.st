
PROGRAM _INIT
	
	ArCanSender.enable				:= TRUE;
	
	(* CAN parameter configuration *)
	ArCanSender.senderDeviceName 	:= 'IF6.ST5.IF1';       (* for X20CS1070 *)
//	ArCanSender.senderDeviceName 	:= 'IF1.ST2.IF1.ST2.IF1';		(* for C50 Touch Panel + X20CS2770 *)
	ArCanSender.Baudrate			:= 500000;		(* Set to 500 000 bit/s *)		
	
	ArCanSender.Format				:= arCAN_11BIT; // or arCAN_29BIT

	(**********	 CAN Baud rate Baudrate Value	************)
	(*******************************************************)
	(* 	  1 000 000 bit/s    >>		Baudrate = 1000000	   *)
	(* 		800 000 bit/s    >>		Baudrate =  800000	   *)
	(* 		500 000 bit/s    >>		Baudrate =  500000	   *)
	(* 		250 000 bit/s    >>		Baudrate =  250000	   *)
	(* 		125 000 bit/s    >>		Baudrate =  125000	   *)
	(* 		100 000 bit/s    >>		Baudrate =  100000	   *)
	(* 		050 000 bit/s    >>		Baudrate =  50000	   *)
	(* 		020 000 bit/s    >>		Baudrate =  20000	   *)
	(* 		010 000 bit/s    >>		Baudrate =  10000	   *)
	(*******************************************************)
	(*******************************************************)
	
END_PROGRAM
	

PROGRAM _CYCLIC	
	
	ActPMSDATATxParshing;
	
	timerCount				:= timerCount + 1;
	IF timerCount >= 2 THEN     // ( cycle time x 5 ) = time for step change (2ms x 5 = 10ms)
		timerCount	:= 0;
		step				:= step + 1;
		IF step > 19 THEN        // after the last step 9, go back to 0 step
			step	:= 0;
		END_IF
		IF ArCanSender.step = STEP_WAIT_CMD THEN
			ArCanSender.step	:= STEP_INIT_SEND_FRAME;
		END_IF
	END_IF
	
	
	(***********************************************************)
	(* Customize the sending data *)

	CASE step OF
		0:
			ArCanSender.ID							:= 16#500;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.SysBatProduct.Value), SIZEOF(PMS.SysBatProduct.Value));

		1: 	
			ArCanSender.ID							:= 16#501;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.SysBatCal.Value), SIZEOF(PMS.SysBatCal.Value));
		
		2: 	
			ArCanSender.ID							:= 16#502;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.SysBatPWR.Value), SIZEOF(PMS.SysBatPWR.Value));
			
		3: 	
			ArCanSender.ID							:= 16#503;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.SysCellVolt.Value), SIZEOF(PMS.SysCellVolt.Value));
			
		4: 	
			ArCanSender.ID							:= 16#504;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.SysCellTemps.Value), SIZEOF(PMS.SysCellTemps.Value));
			
		5: 	
			ArCanSender.ID							:= 16#505;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.SysCellV_TPos.Value), SIZEOF(PMS.SysCellV_TPos.Value));
			
		6: 	
			ArCanSender.ID							:= 16#506;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.SysBatProtect.Value), SIZEOF(PMS.SysBatProtect.Value));
			
		8: 	
			ArCanSender.ID							:= 16#507;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.SysBatDIO.Value), SIZEOF(PMS.SysBatDIO.Value));
			
		9: 	
			ArCanSender.ID							:= 16#508;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BRACal.Value), SIZEOF(PMS.BRACal.Value));
		10: 	
			ArCanSender.ID							:= 16#50A;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BRAPWR_A.Value), SIZEOF(PMS.BRAPWR_A.Value));
			
		11: 	
			ArCanSender.ID							:= 16#50B;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BRAPWR_B.Value), SIZEOF(PMS.BRAPWR_B.Value));
			
		12: 	
			ArCanSender.ID							:= 16#50C;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BRACellV.Value), SIZEOF(PMS.BRACellV.Value));
			
		13: 	
			ArCanSender.ID							:= 16#50D;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BRACellT.Value), SIZEOF(PMS.BRACellT.Value));
			
		14: 	
			ArCanSender.ID							:= 16#50E;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BRACellDiv.Value), SIZEOF(PMS.BRACellDiv.Value));
		
		15: 	
			ArCanSender.ID							:= 16#50F;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BRA_VTPos.Value), SIZEOF(PMS.BRA_VTPos.Value));
			
		16: 	
			ArCanSender.ID							:= 16#510;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BAR_Alarm.Value), SIZEOF(PMS.BAR_Alarm.Value));
		
		17: 	
			ArCanSender.ID							:= 16#511;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BAR_Protect.Value), SIZEOF(PMS.BAR_Protect.Value));
			
		18: 	
			ArCanSender.ID							:= 16#512;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(PMS.BAR_DIO.Value), SIZEOF(PMS.BAR_DIO.Value));
		
	END_CASE
	
	(***********************************************************)
	
				
	IF (ArCanSender.successCount <> successCountOld) THEN
		successCountOld						:= ArCanSender.successCount;
		ArCanSender.ArCanSend_0.SendFrame	:= FALSE;
		ArCanSender.step					:= STEP_WAIT_CMD;
	END_IF
	
	
	(* Action for Sender *)
	ActionArCanSender;
	

	
END_PROGRAM


PROGRAM _EXIT
	(* Deinitialization of the sender *)
	ArCanSender.ArCanSend_0.Enable := FALSE;
	ArCanSender.ArCanSend_0();
END_PROGRAM
