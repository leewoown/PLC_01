
TYPE
	QLog_areas : 	STRUCT 
		ReadA : UDINT;
		ReadB : UDINT;
		WriteA : UDINT;
		WriteB : UDINT;
		ReadUnit : UDINT;
		WriteUnit : UDINT;
	END_STRUCT;
	gComm_typ : 	STRUCT 
		CAN1 : gCommStatus_typ;
		CAN2 : gCommStatus_typ;
		ModTCPM : gCommStatus_typ;
		ModTCPS : gCommStatus_typ;
		ModRTUM : gCommStatus_typ;
	END_STRUCT;
END_TYPE

(*COM Status Structure Type*)

TYPE
	gCommStatus_typ : 	STRUCT 
		bActive : BOOL;
		bTransmitting : BOOL;
		bError : BOOL;
	END_STRUCT;
END_TYPE

(*User Login Structure  Type*)
(*Insert your comment here.*)

TYPE
	gSignalCheckType : 	STRUCT 
		Can_HardwareCheck1 : BOOL;
		Can_HardwareCheck2 : BOOL;
		Can_ReceiveCheck : BOOL;
		Can_SendCheck : BOOL;
		TCP_Check : BOOL;
		RS485_Check : BOOL;
	END_STRUCT;
	SysBMS_Typ : 	STRUCT 
		ProRlyAux : BOOL;
		NRlyAux : BOOL;
		PRlyAux : BOOL;
		EMSRlyAux : BOOL;
		EMSRlyAux_BMP : BOOL;
		GasDetectorAux : BOOL;
		WaterCoolingAux : BOOL;
		FireDetectorAux : BOOL;
		PowerLamp : BOOL;
		Buzzer : BOOL;
		PRly : BOOL;
		NRly : BOOL;
		ProRly : BOOL;
		WakeUpSig : BOOL;
		ResetSig : BOOL;
		ProtectCheckSig : BOOL;
		RackInfoCheckSig : BOOL;
		StopSig : BOOL;
		AlarmSig : BOOL;
		FaultSig : BOOL;
		ProtectSig : BOOL;
		BuzzerSig : BOOL;
		DeviceloadingDone : BOOL;
	END_STRUCT;
END_TYPE

(**)

TYPE
	StateMa_Enum : 
		(
		vkSYSTEM_INITIAL := 0,
		vkSYSTEM_READY := 1,
		vkSYSTEM_STANDBY := 2,
		vkSYSTEM_RUN := 3,
		vkSYSTEM_ALARM := 4,
		vkSYSTEM_FAULT := 5,
		vkSYSTEM_PROTECT := 6,
		vkSYSTEM_STOP := 7,
		vkSYSTEM_RESET := 8
		);
	WakeUpStepMa_Enum : 
		(
		vkWAKEUP_INITIAL,
		vkWAKEUP_RACK1,
		vkWAKEUP_RACK2,
		vkWAKEUP_RACK3,
		vkWAKEUP_RACK4,
		vkWAKEUP_NRLY,
		vkWAKEUP_PRORLY_ON,
		vkWAKEUP_DELAYTIME1,
		vkWAKEUP_PRLY,
		vkWAKEUP_DELAYTIME2,
		vkWAKEUP_PRORLY_OFF,
		vkWAKEUP_TIMERESET
		);
	StopStepMa_Enum : 
		(
		vkSTOP_INITIAL,
		vkSTOP_NRLY,
		vkSTOP_DELAYTIME1,
		vkSTOP_PRLY,
		vkSTOP_DELAYTIME2,
		vkSTOP_RACK1,
		vkSTOP_RACK2,
		vkSTOP_RACK3,
		vkSTOP_RACK4,
		vkSTOP_TIMERESET
		);
END_TYPE
