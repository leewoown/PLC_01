

PROGRAM _INIT
	RackSyS;
	ActArCanReceiver;
	ArCanReceiver.enable				:= TRUE;
	ArCanReceiver.receiverDeviceName 	:= 'IF7';       (* for X20CP0482 CPU *)
	ArCanReceiver.id					:= 0; 
	ArCanReceiver.idMask				:= arCAN_RECEIVE_ALL;  // or configure IDMask
	ArCanReceiver.format				:= arCAN_11BIT;  // or arCAN_29BIT
	ArCanReceiver.queueSize				:= 128;
	ArCanReceiver.ArCanSetBitTimingRegisters_0.Register0 := 0;
	ArCanReceiver.ArCanSetBitTimingRegisters_0.Register1 := 16#1C;
	
	(**********************	 CAN Baud rate Register Value	*************************)
	(********************************************************************************)
	(* 	  1 000 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#14	*)
	(* 		800 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#16	*)
	(* 		500 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#1C	*)
	(* 		250 000 bit/s    >>		Register0 = 16#01	||		Register1 = 16#1C	*)
	(* 		125 000 bit/s    >>		Register0 = 16#03	||		Register1 = 16#1C	*)
	(* 		100 000 bit/s    >>		Register0 = 16#04	||		Register1 = 16#1C	*)
	(* 		050 000 bit/s    >>		Register0 = 16#09	||		Register1 = 16#1C	*)
	(* 		020 000 bit/s    >>		Register0 = 16#18	||		Register1 = 16#1C	*)
	(* 		010 000 bit/s    >>		Register0 = 16#31	||		Register1 = 16#1C	*)
	(********************************************************************************)
	(********************************************************************************)
	

END_PROGRAM

PROGRAM _CYCLIC	
	
	(* Action for ArCanReceiver *)
	ActArCanReceiver;
	(***********************************************************)
	(* Customize the received data *)
	// ArCanReceiver.ArCanReceiver_0.ReceivedFrame; //Data received
	IF (ArCanReceiver.ArCanReceiver_0.NewDataValid) THEN

		CASE ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID OF
			
			16#600..16#60E: // RACK 1
			RackSyS[RACK1].RackCanCount := RackSyS[RACK1].RackCanCount +1;
			IF  RackSyS[RACK1].RackCanCount>=3600 THEN
				RackSyS[RACK1].RackCanCount :=0;
			END_IF;
			//0 : BMS
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#600 THEN
				RackSyS[RACK1].RackIfroArry[BRAPrdInfr]  				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSR_NorVoltage] 			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSR_Capacity]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BRABatconfig] 				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#601 THEN
				RackSyS[RACK1].RackIfroArry[BSA_Volt_Total]   			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_Curr_Total]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_SOC]					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_SOH]					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#602 THEN
				RackSyS[RACK1].RackIfroArry[BSA_Status] 				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_BIT01] 					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_Ah]						:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#603 THEN
				RackSyS[RACK1].RackIfroArry[BSA_WN]						:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_FLT]					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_PROTECT_A]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_PROTECT_B]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#604 THEN
				RackSyS[RACK1].RackIfroArry[BSA_CHAPWCont]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_DisCHAPWCont]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_CHAPWPeak]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_DisCHAPWPeak]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#605 THEN
				RackSyS[RACK1].RackIfroArry[BSA_Cell_MaxV]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_Cell_MinV]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_Cell_AVGV]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_Cell_DeviV]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#606 THEN
				RackSyS[RACK1].RackIfroArry[BSA_Cell_MaxT]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_Cell_MinT]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_Cell_AVGT]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_Cell_DeviT]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#607 THEN
				RackSyS[RACK1].RackIfroArry[BSA_Cell_MaxV_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_Cell_MinV_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_Cell_MaxT_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_Cell_MinT_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#608 THEN
				RackSyS[RACK1].RackIfroArry[BSA_BM1_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_BM1_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_BM1_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_BM1_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#609 THEN
				RackSyS[RACK1].RackIfroArry[BSA_BM2_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_BM2_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_BM2_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_BM2_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60A THEN
				RackSyS[RACK1].RackIfroArry[BSA_BM3_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_BM3_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_BM3_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_BM3_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60B THEN
				RackSyS[RACK1].RackIfroArry[BSA_BM4_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_BM4_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_BM4_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_BM4_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60C THEN
				RackSyS[RACK1].RackIfroArry[BSA_BM5_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_BM5_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_BM5_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_BM5_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60D THEN
				RackSyS[RACK1].RackIfroArry[BSA_BM6_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_BM6_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_BM6_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_BM6_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60E THEN
				RackSyS[RACK1].RackIfroArry[BSA_BM7_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK1].RackIfroArry[BSA_BM7_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK1].RackIfroArry[BSA_BM7_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK1].RackIfroArry[BSA_BM7_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			
			16#610..16#61E: // RACK 2
			
			RackSyS[RACK2].RackCanCount := RackSyS[RACK2].RackCanCount +1;
			IF  RackSyS[RACK2].RackCanCount>=3600 THEN
				RackSyS[RACK2].RackCanCount :=0;
			END_IF;
			//0 : BMS
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#610 THEN
				RackSyS[RACK2].RackIfroArry[BRAPrdInfr]  				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSR_NorVoltage] 			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSR_Capacity]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BRABatconfig] 				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#611 THEN
				RackSyS[RACK2].RackIfroArry[BSA_Volt_Total]   			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_Curr_Total]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_SOC]					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_SOH]					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#612 THEN
				RackSyS[RACK2].RackIfroArry[BSA_Status] 				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_BIT01] 					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_Ah]						:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#613 THEN
				RackSyS[RACK2].RackIfroArry[BSA_WN]						:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_FLT]					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_PROTECT_A]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_PROTECT_B]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#614 THEN
				RackSyS[RACK2].RackIfroArry[BSA_CHAPWCont]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_DisCHAPWCont]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_CHAPWPeak]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_DisCHAPWPeak]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#615 THEN
				RackSyS[RACK2].RackIfroArry[BSA_Cell_MaxV]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_Cell_MinV]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_Cell_AVGV]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_Cell_DeviV]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#616 THEN
				RackSyS[RACK2].RackIfroArry[BSA_Cell_MaxT]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_Cell_MinT]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_Cell_AVGT]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_Cell_DeviT]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#617 THEN
				RackSyS[RACK2].RackIfroArry[BSA_Cell_MaxV_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_Cell_MinV_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_Cell_MaxT_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_Cell_MinT_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#618 THEN
				RackSyS[RACK2].RackIfroArry[BSA_BM1_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_BM1_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_BM1_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_BM1_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#619 THEN
				RackSyS[RACK2].RackIfroArry[BSA_BM2_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_BM2_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_BM2_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_BM2_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61A THEN
				RackSyS[RACK2].RackIfroArry[BSA_BM3_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_BM3_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_BM3_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_BM3_State]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61B THEN
				RackSyS[RACK2].RackIfroArry[BSA_BM4_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_BM4_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_BM4_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_BM4_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61C THEN
				RackSyS[RACK2].RackIfroArry[BSA_BM5_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_BM5_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_BM5_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_BM5_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61D THEN
				RackSyS[RACK2].RackIfroArry[BSA_BM6_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_BM6_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_BM6_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_BM6_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61E THEN
				RackSyS[RACK2].RackIfroArry[BSA_BM7_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK2].RackIfroArry[BSA_BM7_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK2].RackIfroArry[BSA_BM7_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK2].RackIfroArry[BSA_BM7_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			
			16#620..16#62E: // RACK 3
			
			RackSyS[RACK3].RackCanCount := RackSyS[RACK3].RackCanCount +1;
			IF  RackSyS[RACK3].RackCanCount>=3600 THEN
				RackSyS[RACK3].RackCanCount :=0;
			END_IF;
			//0 : BMS
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#620 THEN
				RackSyS[RACK3].RackIfroArry[BRAPrdInfr]  				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSR_NorVoltage] 			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSR_Capacity]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BRABatconfig] 				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#621 THEN
				RackSyS[RACK3].RackIfroArry[BSA_Volt_Total]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_Curr_Total]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_SOC]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_SOH]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#622 THEN
				RackSyS[RACK3].RackIfroArry[BSA_Status]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_BIT01]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_Ah]    					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#623 THEN
				RackSyS[RACK3].RackIfroArry[BSA_WN]    					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_FLT]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_PROTECT_A]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_PROTECT_B]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#624 THEN
				RackSyS[RACK3].RackIfroArry[BSA_CHAPWCont]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_DisCHAPWCont]    		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_CHAPWPeak]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_DisCHAPWPeak]    		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#625 THEN
				RackSyS[RACK3].RackIfroArry[BSA_Cell_MaxV]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_Cell_MinV]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_Cell_AVGV]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_Cell_DeviV]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#626 THEN
				RackSyS[RACK3].RackIfroArry[BSA_Cell_MaxT]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_Cell_MinT]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_Cell_AVGT]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_Cell_DeviT]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#627 THEN
				RackSyS[RACK3].RackIfroArry[BSA_Cell_MaxV_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_Cell_MinV_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_Cell_MaxT_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_Cell_MinT_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#628 THEN
				RackSyS[RACK3].RackIfroArry[BSA_BM1_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_BM1_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_BM1_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_BM1_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#629 THEN
				RackSyS[RACK3].RackIfroArry[BSA_BM2_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_BM2_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_BM2_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_BM2_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62A THEN
				RackSyS[RACK3].RackIfroArry[BSA_BM3_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_BM3_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_BM3_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_BM3_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62B THEN
				RackSyS[RACK3].RackIfroArry[BSA_BM4_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_BM4_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_BM4_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_BM4_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62C THEN
				RackSyS[RACK3].RackIfroArry[BSA_BM5_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_BM5_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_BM5_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_BM5_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62D THEN
				RackSyS[RACK3].RackIfroArry[BSA_BM6_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_BM6_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_BM6_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_BM6_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62E THEN
				RackSyS[RACK3].RackIfroArry[BSA_BM7_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK3].RackIfroArry[BSA_BM7_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK3].RackIfroArry[BSA_BM7_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK3].RackIfroArry[BSA_BM7_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			
			16#630..16#63E: // RACK 3
			
			RackSyS[RACK4].RackCanCount := RackSyS[RACK4].RackCanCount +1;
			IF  RackSyS[RACK4].RackCanCount>=3600 THEN
				RackSyS[RACK4].RackCanCount :=0;
			END_IF;
			//0 : BMS
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#630 THEN
				RackSyS[RACK4].RackIfroArry[BRAPrdInfr]  				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSR_NorVoltage] 			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSR_Capacity]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BRABatconfig] 				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#631 THEN
				RackSyS[RACK4].RackIfroArry[BSA_Volt_Total]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_Curr_Total]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_SOC]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_SOH]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#632 THEN
				RackSyS[RACK4].RackIfroArry[BSA_Status]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_BIT01]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_Ah]    					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#633 THEN
				RackSyS[RACK4].RackIfroArry[BSA_WN]    					:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_FLT]    				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_PROTECT_A]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_PROTECT_B]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#634 THEN
				RackSyS[RACK4].RackIfroArry[BSA_CHAPWCont]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_DisCHAPWCont]    		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_CHAPWPeak]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_DisCHAPWPeak]    		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#635 THEN
				RackSyS[RACK4].RackIfroArry[BSA_Cell_MaxV]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_Cell_MinV]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_Cell_AVGV]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_Cell_DeviV]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#636 THEN
				RackSyS[RACK4].RackIfroArry[BSA_Cell_MaxT]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_Cell_MinT]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_Cell_AVGT]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_Cell_DeviT]    			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#637 THEN
				RackSyS[RACK4].RackIfroArry[BSA_Cell_MaxV_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_Cell_MinV_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_Cell_MaxT_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_Cell_MinT_Location]		:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#638 THEN
				RackSyS[RACK4].RackIfroArry[BSA_BM1_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_BM1_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_BM1_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_BM1_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#639 THEN
				RackSyS[RACK4].RackIfroArry[BSA_BM2_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_BM2_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_BM2_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_BM2_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63A THEN
				RackSyS[RACK4].RackIfroArry[BSA_BM3_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_BM3_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_BM3_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_BM3_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63B THEN
				RackSyS[RACK4].RackIfroArry[BSA_BM4_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_BM4_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_BM4_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_BM4_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63C THEN
				RackSyS[RACK4].RackIfroArry[BSA_BM5_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_BM5_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_BM5_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_BM5_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63D THEN
				RackSyS[RACK4].RackIfroArry[BSA_BM6_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_BM6_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_BM6_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_BM6_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63E THEN
				RackSyS[RACK4].RackIfroArry[BSA_BM7_Volt_Total]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[1]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[0]);	
				RackSyS[RACK4].RackIfroArry[BSA_BM7_Agv_Volt]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[3]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[2]);
				RackSyS[RACK4].RackIfroArry[BSA_BM7_Agv_Temp]			:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[5]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[4]);
				RackSyS[RACK4].RackIfroArry[BSA_BM7_State]				:= SHL(BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[7]),8)OR BYTE_TO_UINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data[6]);
			END_IF;
			
			
			//			16#600..16#60E:
			//			RackSyS[1].RackCanCount := RackSyS[1].RackCanCount +1;
			//			16#620..16#62E:
			//			RackSyS[2].RackCanCount := RackSyS[2].RackCanCount +1;
			//			16#630..16#63E:
			//			RackSyS[3].RackCanCount := RackSyS[3].RackCanCount +1;
			//Can_DB_Key.Header	:=  UDINT_TO_USINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID - 16#600)/16;
			//Can_DB_Key.Body		:= 	UDINT_TO_USINT(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID - 16#600)-Can_DB_Key.Header*16;
			// memcpy(ADR(Can_Data[Can_DB_Key.Header].r6N[Can_DB_Key.Body]),ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data),8);			
		END_CASE;
		
	END_IF
		
	
	//	IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#CanID THEN
	//		memcpy(ADR(TargetVariable), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.DataLength));
	//	ELSIF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#CanID THEN
	//		memcpy(ADR(TargetVariable), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.DataLength));
	//	END_IF
	
	
	
	
	(***********************************************************)
	(* CAN Communication Status *)
	(***********************************************************)
	
	IF ArCanReceiver.ArCanReceiver_0.Error THEN
		gComm.CAN1.bError	:= TRUE;
		gComm.CAN1.bActive	:= FALSE;
		gComm.CAN1.bTransmitting	:= FALSE;
	ELSIF ArCanReceiver.ArCanReceiver_0.Active AND ArCanReceiver.ArCanReceiver_0.Busy THEN
		gComm.CAN1.bError	:= FALSE;
		gComm.CAN1.bActive	:= TRUE;
	
		IF (countCANSuccessOld <> ArCanReceiver.successCount) THEN
			countCANSuccessOld	:= ArCanReceiver.successCount;
			gComm.CAN1.bTransmitting	:= TRUE;
			countTime	:= 0;
		ELSE
			countTime	:= countTime + 1;
			IF (countTime > 50) THEN
				gComm.CAN1.bTransmitting	:= FALSE;
				countTime	:= 0;
			END_IF
		END_IF
	ELSE
		gComm.CAN1.bError	:= FALSE;
		gComm.CAN1.bActive	:= FALSE;
		gComm.CAN1.bTransmitting	:= FALSE;
	END_IF
	(***********************************************************)
	
	
END_PROGRAM





PROGRAM _EXIT
	
	(* Deinitialization of the receiver *)
	ArCanReceiver.ArCanReceiver_0.Enable	:= FALSE;
	ArCanReceiver.ArCanReceiver_0();
	
END_PROGRAM
