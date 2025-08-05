
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
		PRly : BOOL;
		NRly : BOOL;
		ProRly : BOOL;
		WakeUpSig : BOOL;
	END_STRUCT;
END_TYPE

(**)

TYPE
	StateMa_Enum : 
		(
		vkSYSTEM_INITIAL := 0,
		vkSYSTEM_PROTECT_CHECK := 1,
		vkSUBBMS_ALLRESET := 2,
		vkSUBBMS_STATECHECK := 3,
		vkSUBBMS_TEMPCHECK := 4,
		vkSUBBMS_WAITCOMMAND := 5,
		vkSUBBMS_FIRSTWAKEUP := 6,
		vkSUBBMS_WAKEUPSEQ := 7,
		vkSYSTEM_NEGRLY_ON := 8,
		vkSYSTEM_PRORLY_ON := 9,
		vkSYSTEM_RLYDELAY1 := 10,
		vkSYSTEM_POSRLY_ON := 11,
		vkSYSTEM_RLYDELAY2 := 12,
		vkSYSTEM_PRORLY_OFF := 13,
		vkSYSTEM_DELAY_RESET1 := 14,
		vkSYSTEM_RUN := 15,
		vkSYSTEM_NEGRLY_OFF := 16,
		vkSYSTEM_RLYDELAY3 := 17,
		vkSYSTEM_POSRLY_OFF := 18,
		vkSUBBMS_FIRSTWAKEDOWN := 19,
		vkSUBBMS_WAKEDOWNSEQ := 20,
		vkSYSTEM_DELAY_RESET2 := 21
		);
END_TYPE
