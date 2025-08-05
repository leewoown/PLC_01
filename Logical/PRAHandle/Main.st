
PROGRAM _INIT
	(* Insert code here *)
	StateMa := 0; 
	
	RackIndex := 0;
	RackEnable_Count := 0;
	
	PRATimerProRlyOn.IN		:= FALSE;
	PRATimerProRlyOn.PT 	:= T#500ms;
	PRATimerProRlyOff.IN	:= FALSE;
	PRATimerProRlyOff.PT	:= T#200ms;
	PRATimerWakeUpOff.IN 	:= FALSE;
	PRATimerWakeUpOff.PT 	:= T#100ms;
	PRATimerSeqErr.IN 		:= FALSE;
	PRATimerSeqErr.PT 		:= T#15s;
	
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
//		 EMS EDGE POSITIVE TRIGGER 		//
	
//	IF EDGEPOS(Sys.EMSRlyAux) THEN
//	  StateMa := 14;
//	END_IF;
//	
//	
	
	CASE StateMa OF
		vkSYSTEM_INITIAL: // INITIAL
			
			IF HMI.DeviceLoading.SetRackNum <> 0 THEN
	  			StateMa		:= vkSYSTEM_PROTECT_CHECK;
			END_IF;
			
		vkSYSTEM_PROTECT_CHECK: 
			
			IF HMI.DialogBox.Protect_Trigger THEN
				StateMa		:= vkSUBBMS_TEMPCHECK;
			ELSE
				StateMa		:= vkSUBBMS_ALLRESET;
			END_IF;
			
			RackIndex := 0;
			RackEnable_Count := 0;
			
		vkSUBBMS_ALLRESET: // SUB BMS ALL RESET COMMAND ON
			
			FOR LoopCount := 0  TO RACK_MAXNUM_MINUS_1 DO
				SubBMS_Calculator.BMA[LoopCount].Field.BSA_Reset := TRUE;
			END_FOR;
			
			StateMa := vkSUBBMS_STATECHECK;
			
		vkSUBBMS_STATECHECK: // SUB BMS STATE CHECK AND SUB BMS RESET COMMAND OFF
			
			IF (SubBMS_Calculator.BMA[RackIndex].Field.BSA_Reset) THEN
				
				IF SubBMS_Calculator.BSA[RackIndex].Rack_State.Field.BSA_Divice_Status <> 0 THEN
					SubBMS_Calculator.BMA[RackIndex].Field.BSA_Reset := FALSE;
					
					RackEnable_Count	:= RackEnable_Count + 1;
					
				ELSIF SubBMS_Calculator.BSA[RackIndex].Rack_State.Field.BSA_Divice_Status = 0 THEN
					
					SubBMS_Calculator.BMA[RackIndex].Field.BSA_Reset := FALSE;
					
				END_IF;	
				
			END_IF;
			
			RackIndex := RackIndex + 1;
			
			IF RackIndex >= 4 THEN
				
				RackIndex	:= 0;
				
				IF RackEnable_Count = (HMI.DeviceLoading.SetRackNum) THEN
					StateMa := vkSUBBMS_WAITCOMMAND;
				END_IF;
				
			END_IF;
			
		vkSUBBMS_TEMPCHECK: 
			
			IF SubBMS_Calculator.BSA[RackIndex].Rack_State.Field.BSA_Divice_Status <> 0 THEN
					
				RackEnable_Count	:= RackEnable_Count + 1;
					
			ELSIF SubBMS_Calculator.BSA[RackIndex].Rack_State.Field.BSA_Divice_Status = 0 THEN
					
			END_IF;	
			
			RackIndex := RackIndex + 1;
			
			IF RackIndex >= 4 THEN
				
				RackIndex	:= 0;
				
				IF RackEnable_Count = (HMI.DeviceLoading.SetRackNum) THEN
					StateMa := vkSUBBMS_WAITCOMMAND;
				END_IF;
				
			END_IF;
			
		vkSUBBMS_WAITCOMMAND: // WAIT COMMAND
			IF (PMS.PMS.Field.PMS_WakeUp_CMD) AND NOT(PMS.PMS.Field.PMS_FaultReset) AND NOT(PMS.PMS.Field.PMS_Po_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Pro_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Ne_RelayStatus) AND ABS(PMS.SysBatCal.Field.BSA_Curr_Total) <= 50 THEN
				StateMa := vkSUBBMS_FIRSTWAKEUP;
			END_IF;
	
		vkSUBBMS_FIRSTWAKEUP: // INITIATE FIRST WAKE-UP
			PRATimerSeqErr.IN := TRUE;
			
			RackIndex := 0;
			WakeCount := 0;
			
			FOR LoopCount := 0  TO RACK_MAXNUM_MINUS_1 DO
				IF HMI.RackEnable[LoopCount] THEN
					SubBMS_Calculator.BMA[LoopCount].Field.BSA_WakeUP 	:= TRUE;
					RackIndex											:=	LoopCount;
					EXIT;
				END_IF;

			END_FOR;
			//SubBMS_Calculator.BMA[RackIndex].Field.BSA_WakeUP := TRUE;
			
			StateMa := vkSUBBMS_WAKEUPSEQ;
			
		vkSUBBMS_WAKEUPSEQ: // CHECK CURRENT RACK STATUS
			
			IF SubBMS_Calculator.BSA[RackIndex].Rack_State.Field.BSA_Divice_Status = 4 THEN
				
				WakeCount := WakeCount + 1;
				
				IF RackIndex <= RACK_MAXNUM_MINUS_1-1 THEN
					FOR LoopCount := RackIndex + 1  TO RACK_MAXNUM_MINUS_1 DO
						IF HMI.RackEnable[LoopCount] THEN
							SubBMS_Calculator.BMA[LoopCount].Field.BSA_WakeUP 	:= TRUE;
							RackIndex											:=	LoopCount;
							EXIT;
						END_IF;

					END_FOR;
				END_IF;
				
				IF WakeCount = RackEnable_Count THEN
					StateMa := vkSYSTEM_NEGRLY_ON;
				ELSE
					IF WakeCount > RACK_MAXNUM_MINUS_1 THEN
						WakeCount	:= 0;
					END_IF;
				END_IF;
			END_IF;
			
		vkSYSTEM_NEGRLY_ON: // SYSTEM NEG RLY ON
			Sys.NRly := 1;
			
			
			PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status := TRUE;
			
			IF Sys.NRlyAux = 1 THEN
	  			StateMa := vkSYSTEM_PRORLY_ON;
			END_IF;
		
		vkSYSTEM_PRORLY_ON: // SYSTEM PRO RLY ON
			Sys.ProRly :=1;
			
			PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status := TRUE;
			
			IF Sys.ProRlyAux = 1 THEN
	  			StateMa := vkSYSTEM_RLYDELAY1;
			END_IF;
			
		vkSYSTEM_RLYDELAY1: // DELAY TIME
			// Timmer1 on	
			PRATimerProRlyOn.IN := TRUE;
			IF PRATimerProRlyOn.Q = 1 THEN
				StateMa := vkSYSTEM_POSRLY_ON;
			END_IF;			
		
		vkSYSTEM_POSRLY_ON: // SYSTEM POS RLY ON
			Sys.PRly :=1;
			
			PMS.BAR_DIO.Field.BRA_Prelay_DO_Status := TRUE;
			
			IF Sys.PRlyAux = 1 THEN
	  			StateMa := vkSYSTEM_RLYDELAY2;
			END_IF;		
		
		vkSYSTEM_RLYDELAY2 : // DELAY TIME
			// Timer2 on
			PRATimerProRlyOff.IN := TRUE;
			IF PRATimerProRlyOff.Q = 1 THEN
				StateMa := vkSYSTEM_PRORLY_OFF;
			END_IF;
		
		vkSYSTEM_PRORLY_OFF: // SYSTEM PRO RLY OFF
			Sys.ProRly := 0;
			
			PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status := FALSE;
			
			IF Sys.ProRlyAux = 0 THEN
	  			StateMa := vkSYSTEM_DELAY_RESET1;
			END_IF;
		
		vkSYSTEM_DELAY_RESET1 : // Timer reset
			
			PRATimerProRlyOn.IN 	:= FALSE;
			PRATimerProRlyOff.IN 	:= FALSE;
			PRATimerSeqErr.IN 		:= FALSE;
			
			StateMa := vkSYSTEM_RUN;
			
			
		vkSYSTEM_RUN: //RUN STATE (IDLE)
			
			IF NOT(PMS.PMS.Field.PMS_WakeUp_CMD) AND NOT(PMS.PMS.Field.PMS_FaultReset) AND NOT(PMS.PMS.Field.PMS_Po_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Pro_RelayStatus) AND NOT(PMS.PMS.Field.PMS_Ne_RelayStatus) AND ABS(PMS.SysBatCal.Field.BSA_Curr_Total) <= 50 THEN
				StateMa := vkSYSTEM_NEGRLY_OFF;
			END_IF;
		vkSYSTEM_NEGRLY_OFF:
			
			PRATimerSeqErr.IN := TRUE;
			
			Sys.NRly := 0;
			
			PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status := FALSE;
			
			IF Sys.NRlyAux = 0 THEN
				StateMa := vkSYSTEM_RLYDELAY3;
			END_IF;
		
		vkSYSTEM_RLYDELAY3 :
			PRATimerWakeUpOff.IN := TRUE;
			IF PRATimerWakeUpOff.Q = 1 THEN
				StateMa := vkSYSTEM_POSRLY_OFF;
			END_IF;	
		
		vkSYSTEM_POSRLY_OFF :
			Sys.PRly := 0;
			
			PMS.BAR_DIO.Field.BRA_Prelay_DO_Status := FALSE;
			
			IF Sys.PRlyAux = 0 THEN
				StateMa := vkSUBBMS_FIRSTWAKEDOWN;
			END_IF;
		
		vkSUBBMS_FIRSTWAKEDOWN: // INITIATE FIRST WAKE-UP
			
			RackIndex := 0;
			WakeCount := 0;
			
			FOR LoopCount := 0  TO RACK_MAXNUM_MINUS_1 DO
				IF HMI.RackEnable[LoopCount] THEN
					SubBMS_Calculator.BMA[LoopCount].Field.BSA_WakeUP 	:= FALSE;
					RackIndex											:=	LoopCount;
					EXIT;
				END_IF;

			END_FOR;
			//SubBMS_Calculator.BMA[RackIndex].Field.BSA_WakeUP := TRUE;
			StateMa := vkSUBBMS_WAKEDOWNSEQ;

		vkSUBBMS_WAKEDOWNSEQ: // CHECK CURRENT RACK STATUS
			
			IF SubBMS_Calculator.BSA[RackIndex].Rack_State.Field.BSA_Divice_Status = 3 THEN
				
				WakeCount := WakeCount + 1;
				
				IF RackIndex <= RACK_MAXNUM_MINUS_1-1 THEN
					FOR LoopCount := RackIndex + 1  TO RACK_MAXNUM_MINUS_1 DO
						IF HMI.RackEnable[LoopCount] THEN
							SubBMS_Calculator.BMA[LoopCount].Field.BSA_WakeUP 	:= FALSE;
							RackIndex											:=	LoopCount;
							EXIT;
						END_IF;

					END_FOR;
				END_IF;
				
				IF WakeCount = RackEnable_Count THEN
					StateMa := vkSYSTEM_DELAY_RESET2;
				ELSE
					IF WakeCount > RACK_MAXNUM_MINUS_1 THEN
	 					WakeCount	:= 0;
					END_IF;
					
				END_IF;
			END_IF;
//			IF SubBMS_Calculator.BSA[RackIndex].Rack_State.Field.BSA_Divice_Status = 3 THEN
//				RackIndex := RackIndex + 1;
//        
//				IF RackIndex <= Rack_Count THEN
//					SubBMS_Calculator.BMA[RackIndex].Field.BSA_WakeUP := FALSE;
//					
//					StateMa := 18;
//				ELSE
//					
//					StateMa := 19; 
//				END_IF;
//			END_IF;	
			
			
		vkSYSTEM_DELAY_RESET2 :
			PRATimerWakeUpOff.IN	:= FALSE;
			PRATimerSeqErr.IN		:= FALSE;
			
			StateMa := vkSUBBMS_WAITCOMMAND;
			
	END_CASE;
	
	
	// SYSTEM STATE SEQ AND RELAY CHECK
	
	CASE StateMa OF
		0..4: // RESET SEQ
			
			IF RackCount = HMI.DeviceLoading.SetRackNum THEN
				
				PMS.SysBatCal.Field.BSA_Divice_Status := 1; //INIT
				
			ELSE
				
				FOR LoopCount := 0  TO RACK_MAXNUM_MINUS_1 DO
					IF (HMI.RackEnable[LoopCount]) THEN
						IF SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status = 3 OR  SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status = 2 THEN
							RackCount := RackCount + 1 ;
						END_IF;
					END_IF;
				END_FOR;
				
				PMS.SysBatCal.Field.BSA_Divice_Status := 0; //READY
				
			END_IF;
					
					
			IF PMS.PMS.Field.PMS_Po_RelayStatus OR PMS.PMS.Field.PMS_Pro_RelayStatus OR PMS.PMS.Field.PMS_Ne_RelayStatus THEN
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := TRUE;
			ELSE
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := FALSE;
			END_IF;
					
		5:
			FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
				IF SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Neg_Rly OR SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Pos_Rly OR SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_PreChar_Rly THEN
	  				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := TRUE;
				END_IF;

			END_FOR;
			
			IF Sys.PRly OR Sys.NRly OR Sys.ProRly THEN
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := TRUE;
			ELSE
				PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding := FALSE;
			END_IF;
			
		6..14: //WAKE UP SEQ
			PMS.SysBatCal.Field.BSA_Divice_Status := 2; //STANDBY
			
			IF PRATimerSeqErr.Q = 1 THEN
				//PMS.PMS_PAR_SEQErr := TRUE;
			END_IF;	
			
		15:
			IF PMS.PMS.Field.PMS_Po_RelayStatus AND NOT(PMS.PMS.Field.PMS_Pro_RelayStatus) AND PMS.PMS.Field.PMS_Ne_RelayStatus THEN
				PMS.SysBatCal.Field.BSA_Divice_Status := 3; //RUN
			END_IF;
						
		16..21: //WAKE DOWN SEQ
						
			IF NOT(Sys.NRly) AND NOT(Sys.PRly) THEN
				PMS.SysBatCal.Field.BSA_Divice_Status := 2; //STANDBY
			END_IF;
		
			IF PRATimerSeqErr.Q = 1 THEN
				//PMS.PMS_PAR_SEQErr := TRUE;
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

