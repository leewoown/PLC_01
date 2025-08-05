
ACTION ActionArCanSender: 

	CASE ArCanSender.step OF
		STEP_WAIT:
			(* wait for starting *)
			IF (ArCanSender.enable = TRUE) THEN
				ArCanSender.step := STEP_INIT_BAUDRATE;
			END_IF;
			
		STEP_INIT_BAUDRATE: (* Initializes the sender with ArCanSetBaudrate to 250 kbit/s *)
			ArCanSender.ArCanSetBaudrate_0.Execute := TRUE;
			ArCanSender.ArCanSetBaudrate_0.DeviceName := ArCanSender.senderDeviceName;
			ArCanSender.ArCanSetBaudrate_0.Baudrate := ArCanSender.Baudrate;		(* Set to 250 000 bit/s *)			
			
			ArCanSender.ArCanSetBaudrate_0();
			
			IF (ArCanSender.ArCanSetBaudrate_0.Done = TRUE) THEN
				gSignalCheck.Can_HardwareCheck2 := TRUE;
				ArCanSender.step := STEP_INIT_SENDER;
			ELSIF (ArCanSender.ArCanSetBaudrate_0.Error = TRUE) THEN
				ArCanSender.lastError := ArCanSender.ArCanSetBaudrate_0.StatusID;
				ArCanSender.errorCount := ArCanSender.errorCount + 1;
				ArCanSender.step := STEP_ERROR;
			END_IF;
			
			
		STEP_INIT_SENDER:	(* Initializes the CAN Sender *)	
			ArCanSender.ArCanSend_0.Enable := TRUE;
			ArCanSender.ArCanSend_0.DeviceName := ArCanSender.senderDeviceName;
			
			IF (ArCanSender.ArCanSend_0.Active = TRUE) THEN		(* Checks if the FB is active for configuring a sending CAN frame *)
				ArCanSender.step := STEP_WAIT_CMD;
				gSignalCheck.Can_SendCheck := TRUE;
			ELSIF (ArCanSender.ArCanSend_0.Error = TRUE) THEN				
				ArCanSender.errorCount := ArCanSender.errorCount + 1;
				ArCanSender.lastError := ArCanSender.ArCanSend_0.StatusID;
				ArCanSender.step := STEP_ERROR;
			END_IF;
			
			
		STEP_WAIT_CMD:

			
			IF (ArCanSender.enable = FALSE) THEN (* User stops the test *)
				ArCanSender.step := STEP_DEINIT;
			END_IF;
			
		
		STEP_INIT_SEND_FRAME: (* Transmits a CAN Frame *)
				
			IF (ArCanSender.ArCanSend_0.NumberOfFreeBuffers > 0) THEN
				
				ArCanSender.ArCanSend_0.Frame.DataLength := 8;
				ArCanSender.ArCanSend_0.Frame.ID := ArCanSender.ID;			
				ArCanSender.ArCanSend_0.Frame.Format := ArCanSender.Format;						
				ArCanSender.ArCanSend_0.SendFrame := TRUE;	(* Copies the frame into the internal buffer for sending it *)	
				
				ArCanSender.successCount := ArCanSender.successCount + 1;	(* Frame is in the queue and will be sent *)
			ELSE
				ArCanSender.ArCanSend_0.SendFrame := FALSE;
				ArCanSender.waitCounter := ArCanSender.waitCounter  + 1; (* Interface has no more free internal buffers *)
			END_IF;

								
			IF (ArCanSender.ArCanSend_0.Error = TRUE) THEN
				ArCanSender.lastError := ArCanSender.ArCanSend_0.StatusID;
				ArCanSender.errorCount := ArCanSender.errorCount + 1;				
				ArCanSender.step := STEP_ERROR;			
			END_IF;
			
			IF (ArCanSender.enable = FALSE) THEN (* User stops the test *)
				ArCanSender.step := STEP_DEINIT;
			END_IF;

			
		STEP_DEINIT:
			ArCanSender.ArCanSend_0.Enable := FALSE;
			ArCanSender.step := STEP_WAIT;
		
		STEP_ERROR:
			ArCanSender.ArCanSend_0.Enable := FALSE;
			IF (ArCanSender.enable = FALSE) THEN (* User stops the test *)
				ArCanSender.step := STEP_DEINIT;
			END_IF;


	END_CASE;
	
	ArCanSender.ArCanSend_0();
	
	
END_ACTION
