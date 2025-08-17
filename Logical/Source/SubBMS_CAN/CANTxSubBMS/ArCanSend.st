
PROGRAM _INIT
	
	ArCanSender.enable				:= TRUE;
	
	(* CAN parameter configuration *)
	ArCanSender.senderDeviceName 	:= 'IF7';       (* for X20CP0482 CPU *)
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
    
	ActRACK1DATATxParshing;
	ActRACK2DATATxParshing;
	ActRACK3DATATxParshing;
	ActRACK4DATATxParshing;
	
	timerCount				:= timerCount + 1;
	IF timerCount >= 2 THEN     // ( cycle time x 5 ) = time for step change (2ms x 5 = 10ms)
		timerCount	:= 0;
		step				:= step + 1;
		IF step > 4 THEN        // after the last step 9, go back to 0 step
			step	:= 0;
		END_IF
		IF ArCanSender.step = STEP_WAIT_CMD THEN
			ArCanSender.step	:= STEP_INIT_SEND_FRAME;
		END_IF
	END_IF
	
	CASE step OF
		0: // RACK 1
			ArCanSender.ID := 16#700;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(SubBMS.Rack1.BMA.Value), SIZEOF(SubBMS.Rack1.BMA.Value));
		1: // RACK 2
			ArCanSender.ID := 16#701;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(SubBMS.Rack2.BMA.Value), SIZEOF(SubBMS.Rack2.BMA.Value));
		2: // RACK 3
			ArCanSender.ID := 16#702;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(SubBMS.Rack3.BMA.Value), SIZEOF(SubBMS.Rack3.BMA.Value));
		3: // RACK 4
			ArCanSender.ID := 16#703;
			memcpy(ADR(ArCanSender.ArCanSend_0.Frame.Data), ADR(SubBMS.Rack4.BMA.Value), SIZEOF(SubBMS.Rack4.BMA.Value));
		
	END_CASE;
	
				
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
