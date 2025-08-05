
ACTION System_RackState: 
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
			
		CASE SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status OF
			0:  HMI.SystemRackInfo.RACK_State[LoopCount] := 'NONE';
			1:  HMI.SystemRackInfo.RACK_State[LoopCount] := 'IDEL';
			2:  HMI.SystemRackInfo.RACK_State[LoopCount] := 'STANDBY';
			3:  HMI.SystemRackInfo.RACK_State[LoopCount] := 'READY';
			4:  HMI.SystemRackInfo.RACK_State[LoopCount] := 'RUN';
			5:  HMI.SystemRackInfo.RACK_State[LoopCount] := 'PROTECT';
			6:  HMI.SystemRackInfo.RACK_State[LoopCount] := 'STOP';
		END_CASE;
	END_FOR;
END_ACTION

ACTION System_RackVolt: 
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
			HMI.SystemRackInfo.RACK_BRA_Volt_Total[LoopCount] := REAL_TO_STRING((SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Volt_Total));
	END_FOR;
END_ACTION

ACTION System_RackCurr: 
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
		
			HMI.SystemRackInfo.RACK_BRA_Curr_Total[LoopCount] := REAL_TO_STRING((SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Curr_Total));
	END_FOR;
END_ACTION

ACTION System_RackTotal: 	
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
			
		IF HMI.RackEnable[LoopCount] THEN
			HMI.SystemRackInfo.RACK_BRA_Total[LoopCount] := CONCAT(HMI.SystemRackInfo.RACK_BRA_Volt_Total[LoopCount],CONCAT('(V), ',CONCAT(HMI.SystemRackInfo.RACK_BRA_Curr_Total[LoopCount],'(A)')));
		ELSE
			HMI.SystemRackInfo.RACK_BRA_Total[LoopCount] := 'Not Used';
		END_IF;
	END_FOR;
END_ACTION
