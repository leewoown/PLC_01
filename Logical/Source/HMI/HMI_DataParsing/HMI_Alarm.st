
ACTION ActTimeSplit: 
	(**********************************************************************************)
	(* TIME TRANS 'DT#YYYY-MM-DD-hh:mm:ss' >> 'YY-MM-DD, hh:mm' *)
	(**********************************************************************************)
	Timestamp.DTGetTime_0();
	
	Timestamp.Original := DT_TO_STRING(Timestamp.DTGetTime_0.DT1);
	Timestamp.Split.Day := MID(Timestamp.Original,8,6);
	Timestamp.Split.Time := MID(Timestamp.Original,5,15);
	
	Timestamp.Total := CONCAT(Timestamp.Split.Day, CONCAT(', ',Timestamp.Split.Time));
END_ACTION
ACTION ActSystem_Warning: 
	
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_OC) THEN
		IF HMI_Alarm.Warning[0].Count = 0 THEN
			HMI_Alarm.Warning[0].InitialTime 	:= Timestamp.Total;
			HMI_Alarm.Warning[0].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[0].RecentTime 	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[0].Count  := HMI_Alarm.Warning[0].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV) THEN
		IF HMI_Alarm.Warning[1].Count = 0 THEN
			HMI_Alarm.Warning[1].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[1].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[1].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[1].Count  := HMI_Alarm.Warning[1].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_SOC_UN) THEN
		IF HMI_Alarm.Warning[2].Count = 0 THEN
			HMI_Alarm.Warning[2].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[2].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[2].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[2].Count  := HMI_Alarm.Warning[2].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_OV) THEN
		IF HMI_Alarm.Warning[3].Count = 0 THEN
			HMI_Alarm.Warning[3].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[3].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[3].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[3].Count  := HMI_Alarm.Warning[3].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_UV) THEN
		IF HMI_Alarm.Warning[4].Count = 0 THEN
			HMI_Alarm.Warning[4].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[4].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[4].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[4].Count  := HMI_Alarm.Warning[4].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_Cell_OV) THEN
		IF HMI_Alarm.Warning[5].Count = 0 THEN
			HMI_Alarm.Warning[5].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[5].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[5].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[5].Count  := HMI_Alarm.Warning[5].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_Cell_UV) THEN
		IF HMI_Alarm.Warning[6].Count = 0 THEN
			HMI_Alarm.Warning[6].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[6].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[6].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[6].Count  := HMI_Alarm.Warning[6].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaV) THEN
		IF HMI_Alarm.Warning[7].Count = 0 THEN
			HMI_Alarm.Warning[7].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[7].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[7].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[7].Count  := HMI_Alarm.Warning[7].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT) THEN
		IF HMI_Alarm.Warning[8].Count = 0 THEN
			HMI_Alarm.Warning[8].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[8].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[8].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[8].Count  := HMI_Alarm.Warning[8].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT) THEN
		IF HMI_Alarm.Warning[9].Count = 0 THEN
			HMI_Alarm.Warning[9].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[9].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[9].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[9].Count  := HMI_Alarm.Warning[9].Count + 1;		
	END_IF;	
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT) THEN
		IF HMI_Alarm.Warning[10].Count = 0 THEN
			HMI_Alarm.Warning[10].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[10].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[10].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[10].Count 	:= HMI_Alarm.Warning[10].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT) THEN
		IF HMI_Alarm.Warning[11].Count = 0 THEN
			HMI_Alarm.Warning[11].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[11].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[11].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[11].Count 	:= HMI_Alarm.Warning[11].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT) THEN
		IF HMI_Alarm.Warning[12].Count = 0 THEN
			HMI_Alarm.Warning[12].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Warning[12].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Warning[12].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Warning[12].Count 	:= HMI_Alarm.Warning[12].Count + 1;		
	END_IF;
	
END_ACTION
ACTION ActSystem_Fault: //	
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_OC) THEN
		IF HMI_Alarm.Fault[0].Count = 0 THEN
			HMI_Alarm.Fault[0].InitialTime 	:= Timestamp.Total;
			HMI_Alarm.Fault[0].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[0].RecentTime 	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[0].Count  := HMI_Alarm.Fault[0].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_SOC_OV) THEN
		IF HMI_Alarm.Fault[1].Count = 0 THEN
			HMI_Alarm.Fault[1].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[1].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[1].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[1].Count  := HMI_Alarm.Fault[1].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_SOC_UN) THEN
		IF HMI_Alarm.Fault[2].Count = 0 THEN
			HMI_Alarm.Fault[2].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[2].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[2].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[2].Count  := HMI_Alarm.Fault[2].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_OV) THEN
		IF HMI_Alarm.Fault[3].Count = 0 THEN
			HMI_Alarm.Fault[3].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[3].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[3].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[3].Count  := HMI_Alarm.Fault[3].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_UV) THEN
		IF HMI_Alarm.Fault[4].Count = 0 THEN
			HMI_Alarm.Fault[4].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[4].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[4].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[4].Count  := HMI_Alarm.Fault[4].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_Cell_OV) THEN
		IF HMI_Alarm.Fault[5].Count = 0 THEN
			HMI_Alarm.Fault[5].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[5].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[5].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[5].Count  := HMI_Alarm.Fault[5].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_Cell_UV) THEN
		IF HMI_Alarm.Fault[6].Count = 0 THEN
			HMI_Alarm.Fault[6].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[6].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[6].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[6].Count  := HMI_Alarm.Fault[6].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaV) THEN
		IF HMI_Alarm.Fault[7].Count = 0 THEN
			HMI_Alarm.Fault[7].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[7].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[7].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[7].Count  := HMI_Alarm.Fault[7].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT) THEN
		IF HMI_Alarm.Fault[8].Count = 0 THEN
			HMI_Alarm.Fault[8].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[8].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[8].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[8].Count  := HMI_Alarm.Fault[8].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT) THEN
		IF HMI_Alarm.Fault[9].Count = 0 THEN
			HMI_Alarm.Fault[9].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[9].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[9].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[9].Count  := HMI_Alarm.Fault[9].Count + 1;		
	END_IF;	
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT) THEN
		IF HMI_Alarm.Fault[10].Count = 0 THEN
			HMI_Alarm.Fault[10].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[10].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[10].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[10].Count 	:= HMI_Alarm.Fault[10].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT) THEN
		IF HMI_Alarm.Fault[11].Count = 0 THEN
			HMI_Alarm.Fault[11].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[11].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[11].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[11].Count 	:= HMI_Alarm.Fault[11].Count + 1;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaT) THEN
		IF HMI_Alarm.Fault[12].Count = 0 THEN
			HMI_Alarm.Fault[12].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Fault[12].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Fault[12].InitialTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Fault[12].Count 	:= HMI_Alarm.Fault[12].Count + 1;		
	END_IF;
END_ACTION
ACTION ActSystem_Protect: 
		
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_OC) THEN

		IF HMI_Alarm.Protect[0].Count = 0 THEN
			HMI_Alarm.Protect[0].InitialTime 	:= Timestamp.Total;
			HMI_Alarm.Protect[0].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[0].RecentTime 	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[0].Count  := HMI_Alarm.Protect[0].Count + 1;
		HMI_Alarm.Protect[0].Internal_Count  := HMI_Alarm.Protect[0].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[0].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[0].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_SOC_OV) THEN
	
		IF HMI_Alarm.Protect[1].Count = 0 THEN
			HMI_Alarm.Protect[1].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[1].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[1].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[1].Count  := HMI_Alarm.Protect[1].Count + 1;	
		HMI_Alarm.Protect[1].Internal_Count  := HMI_Alarm.Protect[1].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[1].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[1].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_SOC_UN) THEN
	
		IF HMI_Alarm.Protect[2].Count = 0 THEN
			HMI_Alarm.Protect[2].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[2].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[2].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[2].Count  := HMI_Alarm.Protect[2].Count + 1;	
		HMI_Alarm.Protect[2].Internal_Count  := HMI_Alarm.Protect[2].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[2].Name;
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[2].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_OV) THEN
	
		IF HMI_Alarm.Protect[3].Count = 0 THEN
			HMI_Alarm.Protect[3].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[3].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[3].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[3].Count  := HMI_Alarm.Protect[3].Count + 1;	
		HMI_Alarm.Protect[3].Internal_Count  := HMI_Alarm.Protect[3].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[3].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[3].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_UV) THEN
	
		IF HMI_Alarm.Protect[4].Count = 0 THEN
			HMI_Alarm.Protect[4].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[4].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[4].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[4].Count  := HMI_Alarm.Protect[4].Count + 1;
		HMI_Alarm.Protect[4].Internal_Count  := HMI_Alarm.Protect[4].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[4].Name;
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[4].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;			
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Cell_OV) THEN
	
		IF HMI_Alarm.Protect[5].Count = 0 THEN
			HMI_Alarm.Protect[5].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[5].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[5].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[5].Count  := HMI_Alarm.Protect[5].Count + 1;	
		HMI_Alarm.Protect[5].Internal_Count  := HMI_Alarm.Protect[5].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[5].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[5].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Cell_UV) THEN
	
		IF HMI_Alarm.Protect[6].Count = 0 THEN
			HMI_Alarm.Protect[6].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[6].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[6].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[6].Count  := HMI_Alarm.Protect[6].Count + 1;	
		HMI_Alarm.Protect[6].Internal_Count  := HMI_Alarm.Protect[6].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[6].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[6].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV) THEN
	
		IF HMI_Alarm.Protect[7].Count = 0 THEN
			HMI_Alarm.Protect[7].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[7].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[7].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[7].Count  := HMI_Alarm.Protect[7].Count + 1;	
		HMI_Alarm.Protect[7].Internal_Count  := HMI_Alarm.Protect[7].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[7].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[7].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT) THEN
	
		IF HMI_Alarm.Protect[8].Count = 0 THEN
			HMI_Alarm.Protect[8].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[8].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[8].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[8].Count  := HMI_Alarm.Protect[8].Count + 1;	
		HMI_Alarm.Protect[8].Internal_Count  := HMI_Alarm.Protect[8].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[8].Name;
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[8].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT) THEN
	
		IF HMI_Alarm.Protect[9].Count = 0 THEN
			HMI_Alarm.Protect[9].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[9].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[9].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[9].Count  := HMI_Alarm.Protect[9].Count + 1;	
		HMI_Alarm.Protect[9].Internal_Count  := HMI_Alarm.Protect[9].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[9].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[9].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;	
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT) THEN
	
		IF HMI_Alarm.Protect[10].Count = 0 THEN
			HMI_Alarm.Protect[10].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[10].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[10].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[10].Count 	:= HMI_Alarm.Protect[10].Count + 1;	
		HMI_Alarm.Protect[10].Internal_Count  := HMI_Alarm.Protect[10].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[10].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[10].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT) THEN
		
		IF HMI_Alarm.Protect[11].Count = 0 THEN
			HMI_Alarm.Protect[11].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[11].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[11].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[11].Count 	:= HMI_Alarm.Protect[11].Count + 1;	
		HMI_Alarm.Protect[11].Internal_Count  := HMI_Alarm.Protect[11].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[11].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[11].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaT) THEN
	
		IF HMI_Alarm.Protect[12].Count = 0 THEN
			HMI_Alarm.Protect[12].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[12].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[12].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[12].Count 	:= HMI_Alarm.Protect[12].Count + 1;	
		HMI_Alarm.Protect[12].Internal_Count  := HMI_Alarm.Protect[12].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[12].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[12].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Continuously_OP) THEN
	
		IF HMI_Alarm.Protect[13].Count = 0 THEN
			HMI_Alarm.Protect[13].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[13].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[13].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[13].Count 	:= HMI_Alarm.Protect[13].Count + 1;	
		HMI_Alarm.Protect[13].Internal_Count  := HMI_Alarm.Protect[13].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[13].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[13].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Peak_OP) THEN
	
		IF HMI_Alarm.Protect[14].Count = 0 THEN
			HMI_Alarm.Protect[14].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[14].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[14].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[14].Count 	:= HMI_Alarm.Protect[14].Count + 1;	
		HMI_Alarm.Protect[14].Internal_Count  := HMI_Alarm.Protect[14].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[14].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[14].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_InternalCOM) THEN
	
		IF HMI_Alarm.Protect[15].Count = 0 THEN
			HMI_Alarm.Protect[15].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[15].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[15].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[15].Count 	:= HMI_Alarm.Protect[15].Count + 1;	
		HMI_Alarm.Protect[15].Internal_Count  := HMI_Alarm.Protect[15].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[15].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[15].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_ExternalCOM) THEN
	
		IF HMI_Alarm.Protect[16].Count = 0 THEN
			HMI_Alarm.Protect[16].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[16].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[16].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[16].Count 	:= HMI_Alarm.Protect[16].Count + 1;	
		HMI_Alarm.Protect[16].Internal_Count  := HMI_Alarm.Protect[16].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[16].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[16].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_RelayWelding) THEN
	
		IF HMI_Alarm.Protect[17].Count = 0 THEN
			HMI_Alarm.Protect[17].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[17].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[17].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[17].Count 	:= HMI_Alarm.Protect[17].Count + 1;	
		HMI_Alarm.Protect[17].Internal_Count  := HMI_Alarm.Protect[17].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[17].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[17].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_WaterLeak) THEN
	
		IF HMI_Alarm.Protect[18].Count = 0 THEN
			HMI_Alarm.Protect[18].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[18].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[18].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[18].Count 	:= HMI_Alarm.Protect[18].Count + 1;	
		HMI_Alarm.Protect[18].Internal_Count  := HMI_Alarm.Protect[18].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[18].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[18].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_InsulationReg) THEN
	
		IF HMI_Alarm.Protect[19].Count = 0 THEN
			HMI_Alarm.Protect[19].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[19].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[19].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[19].Count 	:= HMI_Alarm.Protect[19].Count + 1;	
		HMI_Alarm.Protect[19].Internal_Count  := HMI_Alarm.Protect[19].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[19].Name;
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[19].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_MDSFuse) THEN
	
		IF HMI_Alarm.Protect[20].Count = 0 THEN
			HMI_Alarm.Protect[20].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[20].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[20].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[20].Count 	:= HMI_Alarm.Protect[20].Count + 1;	
		HMI_Alarm.Protect[20].Internal_Count  := HMI_Alarm.Protect[20].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[20].Name;
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[20].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BSA_Prtct_Cooling_System) THEN
	
		IF HMI_Alarm.Protect[21].Count = 0 THEN
			HMI_Alarm.Protect[21].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[21].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[21].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[21].Count 	:= HMI_Alarm.Protect[21].Count + 1;	
		HMI_Alarm.Protect[21].Internal_Count  := HMI_Alarm.Protect[21].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[21].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[21].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.PMS_PAR_RelayErr) THEN
	
		IF HMI_Alarm.Protect[22].Count = 0 THEN
			HMI_Alarm.Protect[22].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[22].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[22].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[22].Count 	:= HMI_Alarm.Protect[22].Count + 1;	
		HMI_Alarm.Protect[22].Internal_Count  := HMI_Alarm.Protect[22].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[22].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[22].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.PMS_PAR_SEQErr) THEN
	
		IF HMI_Alarm.Protect[23].Count = 0 THEN
			HMI_Alarm.Protect[23].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[23].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[23].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[23].Count 	:= HMI_Alarm.Protect[23].Count + 1;	
		HMI_Alarm.Protect[23].Internal_Count  := HMI_Alarm.Protect[23].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[23].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[23].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;	
	IF EDGEPOS(PMS.SysBatProtect.Field.BPU_PAR_RelayErr) THEN
	
		IF HMI_Alarm.Protect[24].Count = 0 THEN
			HMI_Alarm.Protect[24].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[24].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[24].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[24].Count 	:= HMI_Alarm.Protect[24].Count + 1;	
		HMI_Alarm.Protect[24].Internal_Count  := HMI_Alarm.Protect[24].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[24].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[24].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;			
	END_IF;
	IF EDGEPOS(PMS.SysBatProtect.Field.BRA_PAR_RelayErr) THEN
	
		IF HMI_Alarm.Protect[25].Count = 0 THEN
			HMI_Alarm.Protect[25].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[25].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[25].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[25].Count 	:= HMI_Alarm.Protect[25].Count + 1;	
		HMI_Alarm.Protect[25].Internal_Count  := HMI_Alarm.Protect[25].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[25].Name;
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[25].Location;			
		HMI.DialogBox.Protect_Trigger	:= TRUE;
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatDIO.Field.BSA_EMGSwitch_DI_Status) THEN
	
		IF HMI_Alarm.Protect[26].Count = 0 THEN
			HMI_Alarm.Protect[26].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[26].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[26].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[26].Count 	:= HMI_Alarm.Protect[26].Count + 1;	
		HMI_Alarm.Protect[26].Internal_Count  := HMI_Alarm.Protect[26].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[26].Name;
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[26].Location;		
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	IF EDGEPOS(PMS.SysBatDIO.Field.BSA_CoolingSystem_DI_Status) THEN
	
		IF HMI_Alarm.Protect[27].Count = 0 THEN
			HMI_Alarm.Protect[27].InitialTime  	:= Timestamp.Total;
			HMI_Alarm.Protect[27].RecentTime 	:= Timestamp.Total;
		ELSE
			HMI_Alarm.Protect[27].RecentTime  	:= Timestamp.Total;
		END_IF;
		HMI_Alarm.Protect[27].Count 	:= HMI_Alarm.Protect[27].Count + 1;	
		HMI_Alarm.Protect[27].Internal_Count  := HMI_Alarm.Protect[27].Internal_Count + 1;
		HMI.DialogBox.ProtectName		:= HMI_Alarm.Protect[27].Name;	
		HMI.DialogBox.ProtectNum		:= HMI_Alarm.Protect[27].Location;	
		HMI.DialogBox.Protect_Trigger	:= TRUE;	
		Sys.Buzzer := TRUE;		
	END_IF;
	
END_ACTION

ACTION ActSystem_AlarmTab: 
	CASE HMI.AlarmTableIndex OF
		vkWarning:
			memcpy(ADR(HMI.SubBMS_AlarmTable), ADR(HMI_Alarm.Warning), SIZEOF(HMI_Alarm.Warning));
		
		vkFault:
			memcpy(ADR(HMI.SubBMS_AlarmTable), ADR(HMI_Alarm.Fault), SIZEOF(HMI_Alarm.Fault));
			
		vkProtect:
			memcpy(ADR(HMI.SubBMS_AlarmTable), ADR(HMI_Alarm.Protect), SIZEOF(HMI_Alarm.Protect));
		
		  

	END_CASE;
END_ACTION
