
PROGRAM _INIT
	HMI;
	
	Timestamp.DTGetTime_0.enable := TRUE;
	
	HMI_AlarmName[0] := 'Sys Over Current';
	HMI_AlarmName[1] := 'Sys Over SOC';
	HMI_AlarmName[2] := 'Sys Under SOC';
	HMI_AlarmName[3] := 'Sys Over Voltage';
	HMI_AlarmName[4] := 'Sys Under Voltag';
	HMI_AlarmName[5] := 'Cell Over Voltage';
	HMI_AlarmName[6] := 'Cell Under Voltag';
	HMI_AlarmName[7] := 'Cell UnBalance Voltage';
	HMI_AlarmName[8] := 'Cell DisCHA Over Temperature';
	HMI_AlarmName[9] := 'Cell CHA Over Temperature';
	HMI_AlarmName[10] := 'Cell DisCHA Under Temperature';
	HMI_AlarmName[11] := 'Cell CHA Under Temperature';
	HMI_AlarmName[12] := 'Cell UnBalance Temperature';

	HMI_AlarmName[13] := 'Relay Welding Error';
	HMI_AlarmName[14] := 'Internal COM Error';
	HMI_AlarmName[15] := 'External COM Error';
	HMI_AlarmName[16] := 'Current Transformer COM Error';
	HMI_AlarmName[17] := 'Water Leak Error';
	HMI_AlarmName[18] := 'Emergency Switch Error';
	

	FOR LoopNum := 0 TO 12 DO
	  
		HMI_Alarm.Warning[LoopNum].Name 	:=	HMI_AlarmName[LoopNum];
		HMI_Alarm.Fault[LoopNum].Name 		:=	HMI_AlarmName[LoopNum];
		HMI_Alarm.Protect[LoopNum].Name 	:=	HMI_AlarmName[LoopNum];

	END_FOR;
	
	FOR LoopNum := 13 TO 18 DO
	  
		HMI_Alarm.Protect[LoopNum].Name 	:=	HMI_AlarmName[LoopNum];

	END_FOR;
END_PROGRAM

PROGRAM _CYCLIC
	
	ActTimeSplit;
	ActSystem_Warning;
	ActSystem_Fault;
	ActSystem_Protect;
	ActLOGIN;
	ActSystem_AlarmTab;
	ActDeviceReset;
	
	
	CASE HMI.Step OF
		vkINITIAL:
			HMI.Step := vkBOOTING;	
		vkBOOTING:
		vkSYSTEM: 
			memcpy(ADR(System_HMI),ADR(PMS),SIZEOF(PMS));
			HMI.RackIndex := vkRACKNUM1;
			AtSystemUI;
		vkRACK1:		
			memcpy(ADR(Rack_HMI),ADR(SubBMS.Rack1.BSA),SIZEOF(Rack_HMI));
			HMI.RackIndex := vkRACKNUM1;
			AtRackUI;
		vkRACK2:		
			memcpy(ADR(Rack_HMI),ADR(SubBMS.Rack2.BSA),SIZEOF(Rack_HMI));
			HMI.RackIndex := vkRACKNUM2;
			AtRackUI;
		vkRACK3:		
			memcpy(ADR(Rack_HMI),ADR(SubBMS.Rack3.BSA),SIZEOF(Rack_HMI));
			HMI.RackIndex := vkRACKNUM3;
			AtRackUI;
		vkRACK4:		
			memcpy(ADR(Rack_HMI),ADR(SubBMS.Rack4.BSA),SIZEOF(Rack_HMI));
			HMI.RackIndex := vkRACKNUM4;
			AtRackUI;
		vkALARMHISTORY:
			memcpy(ADR(System_HMI),ADR(PMS),SIZEOF(PMS));
			AtSystemUI;
		vkADMINISTRATOR:
			memcpy(ADR(System_HMI),ADR(PMS),SIZEOF(PMS));
			AtSystemUI;
			
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
END_PROGRAM

