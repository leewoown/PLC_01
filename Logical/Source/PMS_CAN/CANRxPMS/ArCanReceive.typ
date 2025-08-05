
TYPE
	ArCanReceive_steps : 
		(
		STEP_ERROR := 255,
		STEP_DEINIT := 254,
		STEP_WAIT_FOR_DATA := 10,
		STEP_INIT_RECEIVER := 2,
		STEP_INIT_BAUDRATE := 1,
		STEP_WAIT := 0
		);
	ArCanReceive_typ : 	STRUCT 
		step : ArCanReceive_steps := STEP_WAIT;
		ArCanSetBitTimingRegisters_0 : ArCanSetBitTimingRegisters;
		ArCanReceiver_0 : ArCanReceive;
		receiverDeviceName : STRING[80];
		receivedIterationCounter : UDINT;
		lastReceiveTimestamp : UDINT;
		lostFrames : UDINT;
		successCount : UDINT;
		errorCount : UINT;
		lastError : DINT;
		enable : BOOL;
		id : UDINT;
		idMask : UDINT;
		format : UDINT;
		queueSize : UDINT;
	END_STRUCT;
END_TYPE
