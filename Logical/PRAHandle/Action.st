
ACTION ATProtectCheck: // 수정해 과거 이력 검색
	IF Sys.ProtectCheckSig THEN
	  PRATimerPrtErr.IN		:= TRUE;
	END_IF;
	
	IF PRATimerPrtErr.Q THEN
		
		PRAProtectCheckDone := TRUE;
		
	ELSE
		IF NOT(HMI.DialogBox.Protect_Trigger) THEN
	  		
		END_IF;
	END_IF;
	
	IF Sys.ProtectSig THEN
	ELSIF SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Protect_Status <> 0 THEN
	ELSIF SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Protect_Status <> 0 THEN
	ELSIF SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Protect_Status <> 0 THEN
	ELSIF SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Protect_Status <> 0 THEN
	ELSE
		PRAProtectCheckDone := TRUE;
		Sys.ProtectCheckSig	:= FALSE;
	END_IF;
	
END_ACTION

ACTION ATReset: 
	IF Sys.ResetSig THEN
		
		IF SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status = 1 OR SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status = 0 THEN
			SubBMS_Calculator.BMA[0].Field.BSA_Reset := FALSE;
		ELSE
			SubBMS_Calculator.BMA[0].Field.BSA_Reset := TRUE;
		END_IF;
		IF SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status = 1 OR SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status = 0 THEN
			SubBMS_Calculator.BMA[1].Field.BSA_Reset := FALSE;
		ELSE
			SubBMS_Calculator.BMA[1].Field.BSA_Reset := TRUE;
		END_IF;
		IF SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status = 1 OR SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status = 0 THEN
			SubBMS_Calculator.BMA[2].Field.BSA_Reset := FALSE;
		ELSE
			SubBMS_Calculator.BMA[2].Field.BSA_Reset := TRUE;
		END_IF;
		IF SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status = 1 OR SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status = 0 THEN
			SubBMS_Calculator.BMA[3].Field.BSA_Reset := FALSE;
		ELSE
			SubBMS_Calculator.BMA[3].Field.BSA_Reset := TRUE;
		END_IF;
	
		
		FOR i := 0 TO 3 DO
			IF SubBMS_Calculator.BMA[i].Field.BSA_Reset = TRUE THEN
				PRARackResetCount := PRARackResetCount + 1 ;
			END_IF;
		END_FOR;
	
		IF PRARackResetCount = HMI.DeviceLoading.SetRackNum THEN
			PRARackResetDone := TRUE;
		ELSE
			PRARackResetDone := FALSE;
		END_IF;
	END_IF;
END_ACTION

ACTION ATWakeUpSeq: 
	
	CASE WakeUpStep OF
		vkWAKEUP_INITIAL:
			
			Sys.WakeUpSig := TRUE;
			PRATimerSeqErr.IN := TRUE;
			
			IF 	Sys.WakeUpSig THEN
				WakeUpStep := vkWAKEUP_RACK1;
			END_IF;
			
		vkWAKEUP_RACK1: // RACK1 WakeUp
			
			IF SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status = 3 THEN
				SubBMS_Calculator.BMA[0].Field.BSA_WakeUP := TRUE;
			ELSE
				SubBMS_Calculator.BMA[0].Field.BSA_WakeUP := FALSE;
			END_IF;
			
			IF SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status = 4 OR NOT(SubBMS_Calculator.BMA[0].Field.BSA_WakeUP) THEN
				WakeUpStep := vkWAKEUP_RACK2;
			END_IF;
			
		vkWAKEUP_RACK2: // RACK2 WakeUp
			
			IF SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status = 3 THEN
				SubBMS_Calculator.BMA[1].Field.BSA_WakeUP := TRUE;
			ELSE
				SubBMS_Calculator.BMA[1].Field.BSA_WakeUP := FALSE;
			END_IF;
			
			IF SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status = 4 OR NOT(SubBMS_Calculator.BMA[1].Field.BSA_WakeUP) THEN
				WakeUpStep := vkWAKEUP_RACK3;
			END_IF;
			
		vkWAKEUP_RACK3: // RACK3 WakeUp
			
			IF SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status = 3 THEN
				SubBMS_Calculator.BMA[2].Field.BSA_WakeUP := TRUE;
			ELSE
				SubBMS_Calculator.BMA[2].Field.BSA_WakeUP := FALSE;
			END_IF;
			
			IF SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status = 4 OR NOT(SubBMS_Calculator.BMA[2].Field.BSA_WakeUP) THEN
				WakeUpStep := vkWAKEUP_RACK4;
			END_IF;
			
		vkWAKEUP_RACK4: // RACK4 WakeUp
			
			IF SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status = 3 THEN
				SubBMS_Calculator.BMA[3].Field.BSA_WakeUP := TRUE;
			ELSE
				SubBMS_Calculator.BMA[3].Field.BSA_WakeUP := FALSE;
			END_IF;
			
			IF SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status = 4 OR NOT(SubBMS_Calculator.BMA[3].Field.BSA_WakeUP) THEN
				WakeUpStep := vkWAKEUP_NRLY;
			END_IF;
			
		vkWAKEUP_NRLY: // SYSTEM NEG RLY ON
			
			Sys.NRly := 1;
			
			PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status := TRUE;
			
			IF Sys.NRlyAux = 1 THEN
				WakeUpStep := vkWAKEUP_PRORLY_ON;
			END_IF;
		
		vkWAKEUP_PRORLY_ON: // SYSTEM PRO RLY ON
			
			Sys.ProRly :=1;
			
			PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status := TRUE;
			
			IF Sys.ProRlyAux = 1 THEN
				WakeUpStep := vkWAKEUP_DELAYTIME1;
			END_IF;
			
		vkWAKEUP_DELAYTIME1: // DELAY TIME
			// Timmer1 on	
			PRATimerProRlyOn.IN := TRUE;
			
			IF PRATimerProRlyOn.Q = 1 THEN
				WakeUpStep := vkWAKEUP_PRLY;
			END_IF;			
		
		vkWAKEUP_PRLY: // SYSTEM POS RLY ON
			
			Sys.PRly :=1;
			
			PMS.BAR_DIO.Field.BRA_Prelay_DO_Status := TRUE;
			
			IF Sys.PRlyAux = 1 THEN
				WakeUpStep := vkWAKEUP_DELAYTIME2;
			END_IF;		
		
		vkWAKEUP_DELAYTIME2 : // DELAY TIME
			// Timer2 on
			PRATimerProRlyOff.IN := TRUE;
			IF PRATimerProRlyOff.Q = 1 THEN
				WakeUpStep := vkWAKEUP_PRORLY_OFF;
			END_IF;
		
		vkWAKEUP_PRORLY_OFF: // SYSTEM PRO RLY OFF
			
			Sys.ProRly := 0;
			
			PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status := FALSE;
			
			IF Sys.ProRlyAux = 0 THEN
				WakeUpStep := vkWAKEUP_TIMERESET;
			END_IF;
		
		vkWAKEUP_TIMERESET : // Timer reset

			PRATimerProRlyOn.IN 	:= FALSE;
			PRATimerProRlyOff.IN 	:= FALSE;
			PRATimerSeqErr.IN 		:= FALSE;
			
			Sys.WakeUpSig 	:= FALSE;
			PRAWakeUpDone 	:= TRUE;
			WakeUpStep 		:= vkWAKEUP_INITIAL;
		

	END_CASE;
	
END_ACTION
ACTION ATStopSeq: 
	
	CASE StopStep OF
		vkSTOP_INITIAL:
			
			Sys.StopSig := TRUE;
			PRATimerSeqErr.IN := TRUE;
			
			IF Sys.StopSig THEN
	  			StopStep := vkSTOP_NRLY;
			END_IF;
			
		vkSTOP_NRLY: // SYSTEM NEG RLY ON
			
			Sys.NRly := 0;
			
			PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status := FALSE;
			
			IF Sys.NRlyAux = 0 THEN
				StopStep := vkSTOP_DELAYTIME1;
			END_IF;
		
		vkSTOP_DELAYTIME1: // DELAY TIME
			// Timmer1 on	
			PRATimerProRlyOn.IN := TRUE;
			IF PRATimerProRlyOn.Q = 1 THEN
				StopStep := vkSTOP_PRLY;
			END_IF;	
		
		vkSTOP_PRLY: // SYSTEM POS RLY ON
			
			Sys.PRly := 0;
			
			PMS.BAR_DIO.Field.BRA_Prelay_DO_Status := FALSE;
			
			IF Sys.PRlyAux = 0 THEN
				StopStep := vkSTOP_DELAYTIME2;
			END_IF;	
		
		vkSTOP_DELAYTIME2 : // DELAY TIME
			// Timer2 on
			PRATimerProRlyOff.IN := TRUE;
			IF PRATimerProRlyOff.Q = 1 THEN
				StopStep := vkSTOP_RACK1;
			END_IF;
			
		vkSTOP_RACK1: // RACK1 WakeUp
			
			IF SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status = 4 THEN
				SubBMS_Calculator.BMA[0].Field.BSA_WakeUP := FALSE;
			END_IF;
			
			IF SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status = 3 OR SubBMS_Calculator.BSA[0].Rack_State.Field.BSA_Divice_Status = 0 THEN
				StopStep := vkSTOP_RACK2;
			END_IF;
			
		vkSTOP_RACK2: // RACK2 WakeUp
			
			IF SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status = 4 THEN
				SubBMS_Calculator.BMA[1].Field.BSA_WakeUP := FALSE;
			END_IF;
			
			IF SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status = 3 OR SubBMS_Calculator.BSA[1].Rack_State.Field.BSA_Divice_Status = 0 THEN
				StopStep := vkSTOP_RACK3;
			END_IF;
			
		vkSTOP_RACK3: // RACK3 WakeUp
			
			IF SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status = 4 THEN
				SubBMS_Calculator.BMA[2].Field.BSA_WakeUP := FALSE;
			END_IF;
			
			IF SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status = 3 OR SubBMS_Calculator.BSA[2].Rack_State.Field.BSA_Divice_Status = 0 THEN
				StopStep := vkSTOP_RACK4;
			END_IF;
			
		vkSTOP_RACK4: // RACK4 WakeUp
			
			IF SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status = 4 THEN
				SubBMS_Calculator.BMA[3].Field.BSA_WakeUP := FALSE;
			END_IF;
			
			IF SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status = 3 OR SubBMS_Calculator.BSA[3].Rack_State.Field.BSA_Divice_Status = 0 THEN
				StopStep := vkSTOP_TIMERESET;
			END_IF;
			
		
		vkSTOP_TIMERESET : // Timer reset

			PRATimerWakeUpOff.IN	:= FALSE;
			PRATimerSeqErr.IN		:= FALSE;
			
			PRAStopDone 	:= TRUE;
			StopStep 		:= vkSTOP_TIMERESET;
		
		

	END_CASE;
	
END_ACTION