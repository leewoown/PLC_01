
ACTION ActArCanReceiver: 
	
	
	CASE ArCanReceiver.step OF
		STEP_WAIT:
			(* wait for starting *)
			IF ArCanReceiver.enable = TRUE THEN
				ArCanReceiver.step	:= STEP_INIT_BAUDRATE;
			END_IF
					
		STEP_INIT_BAUDRATE:	(* Initializes the receiver with ArCanSetBitTimingRegisters to 250 kbit/s *)
			ArCanReceiver.ArCanSetBitTimingRegisters_0.Execute := TRUE;
			ArCanReceiver.ArCanSetBitTimingRegisters_0.DeviceName := ArCanReceiver.receiverDeviceName;
			//			ArCanReceiver.ArCanSetBitTimingRegisters_0.Register0 := 1;	(* Set to 250 000 bit/s *)
			//			ArCanReceiver.ArCanSetBitTimingRegisters_0.Register1 := 28;	(* Set to 250 000 bit/s *)
			
			ArCanReceiver.ArCanSetBitTimingRegisters_0();
			
			IF (ArCanReceiver.ArCanSetBitTimingRegisters_0.Done = TRUE) THEN
				gSignalCheck.Can_HardwareCheck2 := TRUE;
				ArCanReceiver.step := STEP_INIT_RECEIVER;
			ELSIF (ArCanReceiver.ArCanSetBitTimingRegisters_0.Error = TRUE) THEN
				ArCanReceiver.lastError := ArCanReceiver.ArCanSetBitTimingRegisters_0.StatusID;
				ArCanReceiver.errorCount := ArCanReceiver.errorCount + 1;				
				ArCanReceiver.step := STEP_ERROR;
			END_IF;
			

		STEP_INIT_RECEIVER:	(* Initializes the CAN Receiver *)
			ArCanReceiver.ArCanReceiver_0.Enable := TRUE;			(* FALSE -> TRUE takeovers the input parameters *)
			ArCanReceiver.ArCanReceiver_0.DeviceName := ArCanReceiver.receiverDeviceName;					
			ArCanReceiver.ArCanReceiver_0.ID := ArCanReceiver.id;				(* dummy, because IDMask is arCAN_RECEIVE_ALL *)
			ArCanReceiver.ArCanReceiver_0.IDMask := ArCanReceiver.idMask;
			ArCanReceiver.ArCanReceiver_0.Format := ArCanReceiver.format;
			ArCanReceiver.ArCanReceiver_0.QueueSize	:= ArCanReceiver.queueSize;
					
			IF (ArCanReceiver.ArCanReceiver_0.Active = TRUE) THEN
				
				gSignalCheck.Can_ReceiveCheck := TRUE;
				ArCanReceiver.step := STEP_WAIT_FOR_DATA;
			ELSIF (ArCanReceiver.ArCanReceiver_0.Error = TRUE) THEN
				ArCanReceiver.errorCount := ArCanReceiver.errorCount + 1;
				ArCanReceiver.lastError := ArCanReceiver.ArCanReceiver_0.StatusID;								
				ArCanReceiver.step := STEP_ERROR;
			END_IF;			
			

			
		STEP_WAIT_FOR_DATA:	(* Checks for new data *)
			IF (ArCanReceiver.ArCanReceiver_0.NewDataValid) THEN
				ArCanReceiver.successCount := ArCanReceiver.successCount + 1;
				
				(* copy received data & save timestamp *)
				memcpy( ADR(ArCanReceiver.receivedIterationCounter), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame), SIZEOF(ArCanReceiver.receivedIterationCounter));
					
				ArCanReceiver.lastReceiveTimestamp := ArCanReceiver.ArCanReceiver_0.Timestamp.UTCSeconds;							
				
				ArCanReceiver.lostFrames := ArCanReceiver.lostFrames + ArCanReceiver.ArCanReceiver_0.NumberOfLostFrames;
			ELSIF (ArCanReceiver.ArCanReceiver_0.Error) THEN
				ArCanReceiver.errorCount := ArCanReceiver.errorCount + 1;
				ArCanReceiver.lastError := ArCanReceiver.ArCanReceiver_0.StatusID;							
				ArCanReceiver.step := STEP_ERROR;
			ELSE
				memset( ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID), 0, SIZEOF(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID));
			END_IF;
						
						
			IF (ArCanReceiver.enable = FALSE) THEN (* User stops the test *)
				ArCanReceiver.step := STEP_DEINIT;
			END_IF;
			

		STEP_DEINIT:
			ArCanReceiver.ArCanReceiver_0.Enable := FALSE;			
			ArCanReceiver.step := STEP_WAIT;
			
		STEP_ERROR:
			ArCanReceiver.ArCanReceiver_0.Enable := FALSE;						
			ArCanReceiver.step := STEP_WAIT;
		ELSE

	END_CASE;
	
	ArCanReceiver.ArCanReceiver_0();
	
	


END_ACTION