
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
			IF Sys.ProtectSig THEN
	  			StateMa					:= vkSYSTEM_STANDBY;
			ELSE
				Sys.ResetSig			:= TRUE;
					
				ATReset;
			
				IF PRARackResetDone THEN
				
					Sys.ResetSig := FALSE;
				
					SubBMS_Calculator.BMA[0].Field.BSA_Reset := FALSE;
					SubBMS_Calculator.BMA[1].Field.BSA_Reset := FALSE;
					SubBMS_Calculator.BMA[2].Field.BSA_Reset := FALSE;
					SubBMS_Calculator.BMA[3].Field.BSA_Reset := FALSE;
				
					StateMa					:= vkSYSTEM_STANDBY;
				END_IF;
			END_IF;
			
			IF PMS.PMS.Field.PMS_Po_RelayStatus OR PMS.PMS.Field.PMS_Pro_RelayStatus OR PMS.PMS.Field.PMS_Ne_RelayStatus THEN
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := TRUE;
			ELSE
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := FALSE;
			END_IF;
			
		vkSYSTEM_STANDBY:
			
			PMS.SysBatCal.Field.BSA_Divice_Status :=	UDINT_TO_UINT(vkSYSTEM_STANDBY); //STANDBY
			
			IF (PMS.PMS.Field.PMS_WakeUp_CMD) AND NOT(PMS.PMS.Field.PMS_FaultReset) AND NOT(PMS.PMS.Field.PMS_Po_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Pro_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Ne_RelayStatus) AND ABS(PMS.SysBatCal.Field.BSA_Curr_Total) <= 50 AND
				NOT(Sys.ProtectSig)	 THEN
				StateMa := vkSYSTEM_RUN;
			END_IF;
			
			IF Sys.AlarmSig THEN
				PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_ALARM); //ALARM
			END_IF;
			IF Sys.FaultSig THEN
	  			PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_FAULT); //FAULT
			END_IF;
			IF Sys.ProtectSig THEN
				PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_PROTECT); //PROTECT
				
				Sys.BuzzerSig := TRUE;
				
				StateMa := vkSYSTEM_STOP;
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
			
			IF Sys.AlarmSig THEN
				PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_ALARM); //ALARM
			END_IF;
			IF Sys.FaultSig THEN
				PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_FAULT); //FAULT
			END_IF;
			IF Sys.ProtectSig THEN
				PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_PROTECT); //PROTECT
				Sys.BuzzerSig := TRUE;
				StateMa := vkSYSTEM_STOP;
			END_IF;
			
		vkSYSTEM_STOP:
			Sys.StopSig := TRUE;
			
			ATStopSeq;
			
			IF PRAStopDone THEN
				
				StateMa := vkSYSTEM_STANDBY;
				
				Sys.StopSig := FALSE;
				
				IF Sys.AlarmSig THEN
					PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_ALARM); //ALARM
				END_IF;
				IF Sys.FaultSig THEN
					PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_FAULT); //FAULT
				END_IF;
				IF Sys.ProtectSig THEN
					PMS.SysBatCal.Field.BSA_Divice_Status := UDINT_TO_UINT(vkSYSTEM_PROTECT); //PROTECT
					Sys.BuzzerSig := TRUE;
					StateMa := vkSYSTEM_STOP;
				END_IF;
				
			END_IF;
		vkSYSTEM_RESET:
		
			SubBMS_Calculator.BMA[0].Field.BSA_Reset := TRUE;
			SubBMS_Calculator.BMA[1].Field.BSA_Reset := TRUE;
			SubBMS_Calculator.BMA[2].Field.BSA_Reset := TRUE;
			SubBMS_Calculator.BMA[3].Field.BSA_Reset := TRUE;
		
			IF SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status = 0 THEN
				SubBMS_Calculator.BMA[0].Field.BSA_Reset := FALSE;
			END_IF;
			IF SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status = 0 THEN
				SubBMS_Calculator.BMA[1].Field.BSA_Reset := FALSE;
			END_IF;
			IF SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status = 0 THEN
				SubBMS_Calculator.BMA[2].Field.BSA_Reset := FALSE;
			END_IF;
			IF SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status = 0 THEN
				SubBMS_Calculator.BMA[3].Field.BSA_Reset := FALSE;
			END_IF;
			
			PRARackResetCount := 0;
			
			FOR i := 0 TO 3 DO
				IF SubBMS_Calculator.BSA[i].Rack_State.Field.BSA_Divice_Status = 1 THEN
					SubBMS_Calculator.BMA[i].Field.BSA_Reset := FALSE;
					PRARackResetCount := PRARackResetCount + 1 ;
				END_IF;
			END_FOR;
			
			IF PRARackResetCount = HMI.DeviceLoading.SetRackNum THEN
				PRARackResetDone := TRUE;
			ELSE
				PRARackResetDone := FALSE;
			END_IF;
		
			IF PRARackResetDone THEN
				StateMa					:= vkSYSTEM_STANDBY;
				PRARackResetDone 		:= FALSE;
			END_IF;
	END_CASE;
	
	PRATimerProRlyOn();
	PRATimerProRlyOff();
	PRATimerWakeUpOff();
	PRATimerSeqErr();
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

