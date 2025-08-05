
PROGRAM _INIT
	(* Insert code here *)
	
	HMI.DeviceLoading.DeviceLoadingStep := 0;
	HMI.DeviceLoading.SetRackNum		:= 0;
	HMI.DeviceLoading.RackLoading		:= 0;
	
	TON_0.PT := T#30s;
	
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	TON_0();
	
	CASE HMI.DeviceLoading.DeviceLoadingStep OF
		0:
			HMI.DeviceLoading.RackLoading := 0;
			
		1:// 통신확인

			TON_0.IN							:= TRUE;
			
			HMI.DeviceLoading.Trigger 			:= FALSE;
			
			HMI.DeviceLoading.DeviceLoadingStep := 2;
			HMI.DeviceLoading.RackLoading 		:= 1;
			
			
			
		2:// Rack 갯수 설정 
			
			HMI.DeviceLoading.RackLoading := 2;
			
			IF HMI.DeviceLoading.SetRackNum <> 0 THEN
				
				HMI.DeviceLoading.DeviceLoading_Max := HMI.DeviceLoading.DeviceLoadingStep + HMI.DeviceLoading.SetRackNum;
				
				HMI.DeviceLoading.DeviceLoadingStep := 3;
				
			ELSE
				HMI.DeviceLoading.Trigger := TRUE;
			END_IF;
			
		3: // Rack 정보 확인
			
			
			FOR LoopCount := 0 TO (RACK_MAXNUM_MINUS_1) DO //RACK_NUMBER_MINUS_1 DO
				IF SubBMS_Calculator.BSA[LoopCount].Rack_State.Field.BSA_Divice_Status <> 0 THEN
					IF NOT(HMI.RackEnable[LoopCount]) THEN
						HMI.DeviceLoading.RackLoading 	:= HMI.DeviceLoading.RackLoading + 1;
						HMI.RackEnable[LoopCount]		:= TRUE;
					END_IF;
					
				END_IF;
			END_FOR;
			
			IF HMI.DeviceLoading.RackLoading = (HMI.DeviceLoading.DeviceLoading_Max)  THEN
				HMI.DeviceLoading.DeviceLoadingStep := 4;
				TON_0.IN							:= FALSE;
			END_IF;
		4:
			
			
			HMI.Step := vkSYSTEM;
			HMI.DeviceLoading.DeviceLoadingStep := 5;
			
		5: // Device Loading Done 
			
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
		
	END_CASE;
	
	IF TON_0.Q THEN
		HMI.DialogBox.LoadingError_Trigger := TRUE;
	END_IF;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

