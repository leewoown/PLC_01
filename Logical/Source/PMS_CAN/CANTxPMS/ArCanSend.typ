
TYPE
	ArCanSend_steps : 
		(
		STEP_ERROR := 255,
		STEP_DEINIT := 254,
		STEP_INIT_SEND_FRAME := 10,
		STEP_WAIT_CMD := 3,
		STEP_INIT_SENDER := 2,
		STEP_INIT_BAUDRATE := 1,
		STEP_WAIT := 0
		);
	ArCanSend_typ : 	STRUCT 
		step : ArCanSend_steps := STEP_WAIT;
		ID : UDINT;
		ArCanSetBaudrate_0 : ArCanSetBaudrate;
		ArCanSend_0 : ArCanSend;
		senderDeviceName : STRING[80];
		iterationCounter : UINT;
		successCount : UDINT;
		waitCounter : UDINT;
		errorCount : UINT;
		lastError : DINT;
		enable : BOOL := FALSE;
		Baudrate : UDINT;
		Format : UDINT;
	END_STRUCT;
END_TYPE
