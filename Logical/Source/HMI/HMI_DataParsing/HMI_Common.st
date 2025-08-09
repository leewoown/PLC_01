
ACTION ActTrendData: 
	HMI.TrendData.Voltage	:= UINT_TO_REAL(PMS.SysBatCal.Field.BSA_Volt_Total);
	HMI.TrendData.Current	:= UINT_TO_REAL(PMS.SysBatCal.Field.BSA_Curr_Total);
END_ACTION
ACTION ActRackEnable:
	FOR LoopCount := 0 TO (RACK_MAXNUM_MINUS_1) DO //RACK_NUMBER_MINUS_1 DO
				
		IF SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status <> 0 THEN
			IF NOT(HMI.RackEnable[LoopCount]) THEN
				HMI.RackEnable[LoopCount]		:= TRUE;
			END_IF;
		ELSE
			IF (HMI.RackEnable[LoopCount]) THEN
				HMI.RackEnable[LoopCount]		:= FALSE;
			END_IF;
		END_IF;
	END_FOR;
END_ACTION