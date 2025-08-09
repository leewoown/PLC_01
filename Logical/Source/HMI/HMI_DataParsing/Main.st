
PROGRAM _INIT
	HMI;
	
	Timestamp.DTGetTime_0.enable := TRUE;
	
(*
	¿øº» 
	0	BSA_Prtct_OC
	1	BSA_Prtct_SOC_OV
	2	BSA_Prtct_SOC_UN
	3	BSA_Prtct_OV
	4	BSA_Prtct_UV
	5	BSA_Prtct_Cell_OV
	6	BSA_Prtct_Cell_UV
	7	BSA_Prtct_Cell_UnBalaV
	8	BSA_Prtct_Discharger_Cell_OT
	9	BSA_Prtct_Charger_Cell_OT
	10	BSA_Prtct_Charger_Cell_UT
	11	BSA_Prtct_Charger_Cell_UT
	12	BSA_Prtct_Cell_UnBalaT
	13	BSA_Prtct_Continuously_OP
	14	BSA_Prtct_Peak_OP
	15	BSA_Prtct_InternalCOM
	16	BSA_Prtct_ExternalCOM
	17	BSA_Prtct_RelayWelding
	18	BSA_Prtct_WaterLeak
	19	BSA_Prtct_InsulationReg
	20	BSA_Prtct_MDSFuse
	21	BSA_Prtct_Cooling_System 
	22	PMS_PAR_RelayErr
	23	PMS_PAR_SEQErr
	24	BPU_PAR_RelayErr
	25	BRA_PAR_RelayErr
	26	BSA_EMGSwitch 
	27	BSA_CoolingSystem

*)
	//	 BRA Protect Signal //
	HMI_AlarmName[0] := 'Sys Over Current';
	HMI_AlarmName[1] := 'Sys Over SOC';
	HMI_AlarmName[2] := 'Sys Under SOC';
	HMI_AlarmName[3] := 'Sys Over Voltage';
	HMI_AlarmName[4] := 'Sys Under Voltag';
	HMI_AlarmName[5] := 'Cell Over Voltage';
	HMI_AlarmName[6] := 'Cell Under Voltage';
	HMI_AlarmName[7] := 'Cell UnBalance Voltage';
	HMI_AlarmName[8] := 'Cell DisCHA Over Temperature';
	HMI_AlarmName[9] := 'Cell CHA Over Temperature';
	HMI_AlarmName[10] := 'Cell DisCHA Under Temperature';
	
	HMI_AlarmName[11] := 'Cell CHA Under Temperature';
	HMI_AlarmName[12] := 'Cell UnBalance Temperature';
	HMI_AlarmName[13] := 'Continuously Over Power';
	HMI_AlarmName[14] := 'Peak Over Power';
	HMI_AlarmName[15] := 'Internal COM Error';
	HMI_AlarmName[16] := 'External COM Error';
	HMI_AlarmName[17] := 'Relay Welding';
	HMI_AlarmName[18] := 'Water Leak Error';
	HMI_AlarmName[19] := 'InsulationReg Error';
	HMI_AlarmName[20] := 'MDSFuse Error';
	
	HMI_AlarmName[21] := 'BRA Cooling System Error';
	
	//	 Seq Relay Error Signal //
	HMI_AlarmName[22] := 'PMS PAR Relay Error';
	HMI_AlarmName[23]:= 'PMS PAR SEQ Error';
	HMI_AlarmName[24]:= 'BPU PARRelay Error';
	HMI_AlarmName[25]:= 'BRA PARRelay Error';
	
	//	BSA DI //
	HMI_AlarmName[26]:= 'EMGSwitch Error';
	HMI_AlarmName[27]:= 'BRA Cooling System Error';
	
	
	
	

	FOR LoopNum := 0 TO 12 DO
	  
		HMI_Alarm.Warning[LoopNum].Name 	:=	HMI_AlarmName[LoopNum];
		HMI_Alarm.Fault[LoopNum].Name 		:=	HMI_AlarmName[LoopNum];
		HMI_Alarm.Protect[LoopNum].Name 	:=	HMI_AlarmName[LoopNum];

	END_FOR;
	
	FOR LoopNum := 13 TO 29 DO
	  
		HMI_Alarm.Protect[LoopNum].Name 	:=	HMI_AlarmName[LoopNum];

	END_FOR;
	
	HMI.DeviceLoading.DeviceLoadingStep := 0;
	HMI.DeviceLoading.SetRackNum		:= 0;
	HMI.DeviceLoading.RackLoading		:= 0;
	
	TON_0.PT := T#30s;
END_PROGRAM

PROGRAM _CYCLIC
	
	ActTimeSplit;
	
	ActLOGIN;
	ActSystem_AlarmTab;
	ActDeviceReset;
	
	CASE HMI.Step OF
		vkINITIAL:
			HMI.Step := vkBOOTING;	
		vkBOOTING:
			TON_0();
			ActDeviceloading;
			
			IF Sys.DeviceloadingDone THEN
				HMI.Step := vkSYSTEM; 
			END_IF;
		vkSYSTEM: 
			ActRackEnable;
			memcpy(ADR(System_HMI),ADR(PMS),SIZEOF(PMS));
			HMI.RackIndex := vkRACKNUM1;
			AtSystemUI;
			
			ActSystem_Warning;
			ActSystem_Fault;
			ActSystem_Protect;
			
		vkRACK1:	
			ActRackEnable;
			memcpy(ADR(Rack_HMI),ADR(SubBMS.Rack1.BSA),SIZEOF(Rack_HMI));
			HMI.RackIndex := vkRACKNUM1;
			AtRackUI;
			
			ActSystem_Warning;
			ActSystem_Fault;
			ActSystem_Protect;
			
		vkRACK2:	
			ActRackEnable;
			memcpy(ADR(Rack_HMI),ADR(SubBMS.Rack2.BSA),SIZEOF(Rack_HMI));
			HMI.RackIndex := vkRACKNUM2;
			AtRackUI;
			
			ActSystem_Warning;
			ActSystem_Fault;
			ActSystem_Protect;
			
		vkRACK3:	
			ActRackEnable;
			memcpy(ADR(Rack_HMI),ADR(SubBMS.Rack3.BSA),SIZEOF(Rack_HMI));
			HMI.RackIndex := vkRACKNUM3;
			AtRackUI;
			
			ActSystem_Warning;
			ActSystem_Fault;
			ActSystem_Protect;
			
		vkRACK4:	
			ActRackEnable;
			memcpy(ADR(Rack_HMI),ADR(SubBMS.Rack4.BSA),SIZEOF(Rack_HMI));
			HMI.RackIndex := vkRACKNUM4;
			AtRackUI;
			
			ActSystem_Warning;
			ActSystem_Fault;
			ActSystem_Protect;
			
		vkALARMHISTORY:
			ActRackEnable;
			memcpy(ADR(System_HMI),ADR(PMS),SIZEOF(PMS));
			AtSystemUI;
			
			ActSystem_Warning;
			ActSystem_Fault;
			ActSystem_Protect;
			
		vkADMINISTRATOR:
			ActRackEnable;
			memcpy(ADR(System_HMI),ADR(PMS),SIZEOF(PMS));
			AtSystemUI;
			
			ActSystem_Warning;
			ActSystem_Fault;
			ActSystem_Protect;
			
			
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
END_PROGRAM

