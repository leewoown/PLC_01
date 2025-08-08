
PROGRAM _INIT
	(* Insert code here *)
	
	
	StateMa := vkSYSTEM_INITIAL; 
	
	PRARackResetCount		:= 0;	
	
	PRAProtectCheckDone		:= FALSE;
	PRAWakeUpDone			:= FALSE;	
	
	WakeUpStep				:= vkWAKEUP_INITIAL;
	StopStep				:= vkSTOP_INITIAL;
	
	PRATimerProRlyOn.IN		:= FALSE;
	PRATimerProRlyOn.PT 	:= T#500ms;
	PRATimerProRlyOff.IN	:= FALSE;
	PRATimerProRlyOff.PT	:= T#200ms;
	PRATimerWakeUpOff.IN 	:= FALSE;
	PRATimerWakeUpOff.PT 	:= T#100ms;
	PRATimerSeqErr.IN 		:= FALSE;
	PRATimerSeqErr.PT 		:= T#15s;
	PRATimerPrtErr.IN		:= FALSE;
	PRATimerPrtErr.PT		:= T#500ms;
END_PROGRAM

PROGRAM _CYCLIC
	
	CASE StateMa OF
		
		vkSYSTEM_INITIAL:
			
			PMS.SysBatCal.Field.BSA_Divice_Status := 	UDINT_TO_UINT(vkSYSTEM_INITIAL); //INIT
			
			IF HMI.DeviceLoading.SetRackNum <> 0 THEN
				StateMa		:= vkSYSTEM_READY;
			END_IF;
			
			IF PMS.PMS.Field.PMS_Po_RelayStatus OR PMS.PMS.Field.PMS_Pro_RelayStatus OR PMS.PMS.Field.PMS_Ne_RelayStatus THEN
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := TRUE;
			ELSE
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := FALSE;
			END_IF;
			
		vkSYSTEM_READY:
			
			PMS.SysBatCal.Field.BSA_Divice_Status 			:=	UDINT_TO_UINT(vkSYSTEM_READY); //READY
			
			Sys.ResetSig			:= TRUE;
			
			ATReset;
			
			IF PRARackResetDone THEN
				
				Sys.ResetSig := FALSE;
				
				ATRackReadyCheck;
				StateMa					:= vkSYSTEM_STANDBY;
			END_IF;
			
			IF PMS.PMS.Field.PMS_Po_RelayStatus OR PMS.PMS.Field.PMS_Pro_RelayStatus OR PMS.PMS.Field.PMS_Ne_RelayStatus THEN
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := TRUE;
			ELSE
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := FALSE;
			END_IF;
			
		vkSYSTEM_STANDBY:
			
			PMS.SysBatCal.Field.BSA_Divice_Status :=	UDINT_TO_UINT(vkSYSTEM_STANDBY); //STANDBY
			
			IF (PMS.PMS.Field.PMS_WakeUp_CMD) AND NOT(PMS.PMS.Field.PMS_FaultReset) AND NOT(PMS.PMS.Field.PMS_Po_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Pro_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Ne_RelayStatus) AND ABS(PMS.SysBatCal.Field.BSA_Curr_Total) <= 50 THEN
				StateMa := vkSYSTEM_RUN;
			END_IF;
		
			IF Sys.PRly OR Sys.NRly OR Sys.ProRly THEN
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := TRUE;
			ELSE
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := FALSE;
			END_IF;
			
		vkSYSTEM_RUN:
			
			ATWakeUpSeq;
			
			IF PRAWakeUpDone THEN
				PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_RUN); //RUN
			END_IF;
			
			IF NOT(PMS.PMS.Field.PMS_WakeUp_CMD) AND NOT(PMS.PMS.Field.PMS_FaultReset) AND NOT(PMS.PMS.Field.PMS_Po_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Pro_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Ne_RelayStatus) AND ABS(PMS.SysBatCal.Field.BSA_Curr_Total) <= 50 THEN
				StateMa := vkSYSTEM_STOP;
			END_IF;
			
			IF Sys.ProtectSig THEN
				StateMa := vkSYSTEM_PROTECT;
			ELSIF Sys.FaultSig THEN
				StateMa := vkSYSTEM_FAULT;
			ELSIF Sys.AlarmSig THEN
				StateMa := vkSYSTEM_ALARM;
			END_IF;
			
		vkSYSTEM_STOP:
			Sys.StopSig := TRUE;
			
			ATStopSeq;
			
			IF PRAStopDone THEN
				StateMa := vkSYSTEM_STANDBY;
			END_IF;
			
		vkSYSTEM_ALARM:
			PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_ALARM); //ALARM
			
//			IF NOT(PMS.PMS.Field.PMS_WakeUp_CMD) AND NOT(PMS.PMS.Field.PMS_FaultReset) AND NOT(PMS.PMS.Field.PMS_Po_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Pro_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Ne_RelayStatus) AND ABS(PMS.SysBatCal.Field.BSA_Curr_Total) <= 50 THEN
//			StateMa := vkSYSTEM_STOP;
//			END_IF;
			
		vkSYSTEM_FAULT:
			PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_FAULT); //FAULT
			
//			IF NOT(PMS.PMS.Field.PMS_WakeUp_CMD) AND NOT(PMS.PMS.Field.PMS_FaultReset) AND NOT(PMS.PMS.Field.PMS_Po_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Pro_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Ne_RelayStatus) AND ABS(PMS.SysBatCal.Field.BSA_Curr_Total) <= 50 THEN
//				StateMa := vkSYSTEM_STOP;
//			END_IF;
			
		vkSYSTEM_PROTECT:
			PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_PROTECT); //PROTECT
			
			//StateMa := vkSYSTEM_STOP;
		
	END_CASE;
	
	PRATimerProRlyOn();
	PRATimerProRlyOff();
	PRATimerWakeUpOff();
	PRATimerSeqErr();
	

	
	IF Sys.FireDetectorAux OR Sys.GasDetectorAux OR Sys.WaterCoolingAux OR Sys.EMSRlyAux_BMP OR Sys.EMSRlyAux THEN
		Sys.ProtectSig := TRUE;
		Sys.Buzzer := TRUE;
	ELSE
		Sys.Buzzer := FALSE;
	END_IF;
	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

