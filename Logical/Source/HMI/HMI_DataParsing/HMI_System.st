ACTION AtSystemUI :
	
	CASE System_HMI.SysBatCal.Field.BSA_Divice_Status OF
		0:  HMI.BSA_Divice_Status := 'INIT';
		1:  HMI.BSA_Divice_Status := 'READY';
		2:  HMI.BSA_Divice_Status := 'STANDBY';
		3:  HMI.BSA_Divice_Status := 'RUN';
		4:  HMI.BSA_Divice_Status := 'ALARM';
		5:  HMI.BSA_Divice_Status := 'FAULT';
		6:  HMI.BSA_Divice_Status := 'PROTECT';
	END_CASE;
	
	HMI.Gauge.BRA_Volt_Total		:= (System_HMI.SysBatCal.Field.BSA_Volt_Total) ;
	HMI.Gauge.BRA_Volt_Total_A		:= REAL_TO_STRING((HMI.Gauge.BRA_Volt_Total-400)*0.675);
	HMI.Gauge.BRA_Volt_Total_B		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMI.Gauge.BRA_Volt_Total_A,',0,0]}]'));
	
	HMI.Gauge.BRA_Curr_Total 			:= (System_HMI.SysBatCal.Field.BSA_Curr_Total) ;
	HMI.Gauge.BRA_Curr_Total_A		:= REAL_TO_STRING(HMI.Gauge.BRA_Curr_Total*0.27+135);
	HMI.Gauge.BRA_Curr_Total_B		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMI.Gauge.BRA_Curr_Total_A,',0,0]}]'));
	
	HMI.Gauge.BRA_SOC		:= (System_HMI.SysBatCal.Field.BSA_SOC) ;
	HMI.Gauge.BRA_SOC_A		:= REAL_TO_STRING(HMI.Gauge.BRA_SOC*2.7);
	HMI.Gauge.BRA_SOC_B		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMI.Gauge.BRA_SOC_A,',0,0]}]'));
	
	HMI.Gauge.BRA_SOH		:= (System_HMI.SysBatDIO.Field.BSA_SOH);
	HMI.Gauge.BRA_SOH_A		:= REAL_TO_STRING(HMI.Gauge.BRA_SOH*2.7);
	HMI.Gauge.BRA_SOH_B		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMI.Gauge.BRA_SOH_A,',0,0]}]'));
	
	
	HMI.BatteryInfo.BSA_Cell_MaxV 		:= (System_HMI.SysCellVolt.Field.BSA_Cell_MaxV) ;
	HMI.BatteryInfo.BSA_Cell_MinV		:= (System_HMI.SysCellVolt.Field.BSA_Cell_MinV);
	HMI.BatteryInfo.BSA_Cell_AVGV		:= (System_HMI.SysCellVolt.Field.BSA_Cell_AVGV)  ;
	HMI.BatteryInfo.BSA_Cell_DeviV 		:= (System_HMI.SysCellVolt.Field.BSA_Cell_DeviV) ;
	
	
	HMI.BatteryInfo.BSA_Cell_MaxT 		:= (System_HMI.SysCellTemps.Field.BSA_Cell_MaxT) ;
	HMI.BatteryInfo.BSA_Cell_MinT		:= (System_HMI.SysCellTemps.Field.BSA_Cell_MinT	) ;
	HMI.BatteryInfo.BSA_Cell_AVGT		:= (System_HMI.SysCellTemps.Field.BSA_Cell_AVGT) ;
	HMI.BatteryInfo.BSA_Cell_DeviT 		:= (System_HMI.SysCellTemps.Field.BSA_Cell_DeviT);
	
	HMI.BatteryInfo.BSA_Cell_MaxV_Rack_Location		:= UINT_TO_STRING(System_HMI.SysCellV_TPos.Field.BSA_Rack_MaxV_Location) ;
	HMI.BatteryInfo.BSA_Cell_MaxV_Cell_Location		:= UINT_TO_STRING(System_HMI.SysCellV_TPos.Field.BSA_Cell_MaxV_Location) ;
	HMI.BatteryInfo.BSA_Cell_MaxV_Location		:= CONCAT(HMI.BatteryInfo.BSA_Cell_MaxV_Rack_Location,CONCAT('(R), ',CONCAT(HMI.BatteryInfo.BSA_Cell_MaxV_Cell_Location,'(C)')));
	
	HMI.BatteryInfo.BSA_Cell_MinV_Rack_Location		:= UINT_TO_STRING(System_HMI.SysCellV_TPos.Field.BSA_Rack_MinV_Location) ;
	HMI.BatteryInfo.BSA_Cell_MinV_Cell_Location		:= UINT_TO_STRING(System_HMI.SysCellV_TPos.Field.BSA_Cell_MinV_Location) ;
	HMI.BatteryInfo.BSA_Cell_MinV_Location		:= CONCAT(HMI.BatteryInfo.BSA_Cell_MinV_Rack_Location,CONCAT('(R), ',CONCAT(HMI.BatteryInfo.BSA_Cell_MinV_Cell_Location,'(C)')));
	
	HMI.BatteryInfo.BSA_Cell_MaxT_Rack_Location		:= UINT_TO_STRING(System_HMI.SysCellV_TPos.Field.BSA_Rack_MaxT_Location) ;
	HMI.BatteryInfo.BSA_Cell_MaxT_Cell_Location		:= UINT_TO_STRING(System_HMI.SysCellV_TPos.Field.BSA_Cell_MaxT_Location) ;
	HMI.BatteryInfo.BSA_Cell_MaxT_Location		:= CONCAT(HMI.BatteryInfo.BSA_Cell_MaxT_Rack_Location,CONCAT('(R), ',CONCAT(HMI.BatteryInfo.BSA_Cell_MaxT_Cell_Location,'(C)')));
	
	HMI.BatteryInfo.BSA_Cell_MinT_Rack_Location		:= UINT_TO_STRING(System_HMI.SysCellV_TPos.Field.BSA_Rack_MinT_Location) ;
	HMI.BatteryInfo.BSA_Cell_MinT_Cell_Location		:= UINT_TO_STRING(System_HMI.SysCellV_TPos.Field.BSA_Cell_MinT_Location) ;
	HMI.BatteryInfo.BSA_Cell_MinT_Location		:= CONCAT(HMI.BatteryInfo.BSA_Cell_MinT_Rack_Location,CONCAT('(R), ',CONCAT(HMI.BatteryInfo.BSA_Cell_MinT_Cell_Location,'(C)')));
	
	
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_OC THEN
		HMI.ProtectStatus.BSA_OC		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_OC THEN
		HMI.ProtectStatus.BSA_OC		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_OC THEN		
		HMI.ProtectStatus.BSA_OC		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_OC		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_SOC_OV THEN
		HMI.ProtectStatus.BSA_SOC_OV		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_SOC_OV THEN
		HMI.ProtectStatus.BSA_SOC_OV		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_SOC_OV THEN		
		HMI.ProtectStatus.BSA_SOC_OV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_SOC_OV		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_SOC_UN THEN
		HMI.ProtectStatus.BSA_SOC_Un		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_SOC_UN THEN
		HMI.ProtectStatus.BSA_SOC_Un		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_SOC_UN THEN		
		HMI.ProtectStatus.BSA_SOC_Un		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_SOC_Un		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_OV THEN
		HMI.ProtectStatus.BSA_OV		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_OV THEN
		HMI.ProtectStatus.BSA_OV		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_OV THEN		
		HMI.ProtectStatus.BSA_OV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_OV		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_UV THEN
		HMI.ProtectStatus.BSA_UV		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_UV THEN
		HMI.ProtectStatus.BSA_UV		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_UV  THEN		
		HMI.ProtectStatus.BSA_UV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_UV		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Cell_OV THEN
		HMI.ProtectStatus.BSA_Cell_OV		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Cell_OV THEN
		HMI.ProtectStatus.BSA_Cell_OV		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Cell_OV THEN		
		HMI.ProtectStatus.BSA_Cell_OV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Cell_OV		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Cell_UV THEN
		HMI.ProtectStatus.BSA_Cell_UV		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Cell_UV THEN
		HMI.ProtectStatus.BSA_Cell_UV		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Cell_UV THEN		
		HMI.ProtectStatus.BSA_Cell_UV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Cell_UV		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV THEN
		HMI.ProtectStatus.BSA_Cell_UnbalV		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Cell_UnBalaV THEN
		HMI.ProtectStatus.BSA_Cell_UnbalV		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaV THEN		
		HMI.ProtectStatus.BSA_Cell_UnbalV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Cell_UnbalV		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_OT		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_OT		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT THEN		
		HMI.ProtectStatus.BSA_DisCharger_Cell_OT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_DisCharger_Cell_OT		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT THEN
		HMI.ProtectStatus.BSA_Charger_Cell_OT		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT THEN
		HMI.ProtectStatus.BSA_Charger_Cell_OT		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT THEN		
		HMI.ProtectStatus.BSA_Charger_Cell_OT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Charger_Cell_OT		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT THEN		
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT THEN		
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT THEN
		HMI.ProtectStatus.BSA_Charger_Cell_UT		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT THEN
		HMI.ProtectStatus.BSA_Charger_Cell_UT		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT THEN		
		HMI.ProtectStatus.BSA_Charger_Cell_UT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Charger_Cell_UT		:= 'Solid_Green';
	END_IF;
	
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaT THEN
		HMI.ProtectStatus.BSA_Cell_UnbalT		:= 'Solid_Red';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Fault_Cell_UnBalaT THEN
		HMI.ProtectStatus.BSA_Cell_UnbalT		:= 'Solid_Orange';
	ELSIF System_HMI.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT THEN		
		HMI.ProtectStatus.BSA_Cell_UnbalT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Cell_UnbalT		:= 'Solid_Green';
	END_IF;
	

	IF System_HMI.SysBatProtect.Field.BSA_Prtct_InternalCOM THEN
		HMI.ProtectStatus.BSA_Prtct_IN_COM_Err		:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_IN_COM_Err		:= 'Solid_Green';			
	END_IF;
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_ExternalCOM THEN
		HMI.ProtectStatus.BSA_Prtct_EX_COM_Err		:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_EX_COM_Err		:= 'Solid_Green';
	END_IF;
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_RelayWelding THEN
		HMI.ProtectStatus.BSA_Prtct_Rly_Err			:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_Rly_Err			:= 'Solid_Green';
	END_IF;
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_WaterLeak THEN
		HMI.ProtectStatus.BSA_Prtct_Water_Leak_Err	:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_Water_Leak_Err	:= 'Solid_Green';
	END_IF;
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_InsulationReg THEN
		HMI.ProtectStatus.BRA_Prtct_InsulationReg	:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BRA_Prtct_InsulationReg	:= 'Solid_Green';
	END_IF;
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_MDSFuse THEN
		HMI.ProtectStatus.BRA_Prtct_MDSFuse	:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BRA_Prtct_MDSFuse	:= 'Solid_Green';
	END_IF;
	IF System_HMI.SysBatProtect.Field.BSA_Prtct_Cooling_System THEN
		HMI.ProtectStatus.BSA_Prtct_CoolingSystem		:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_CoolingSystem		:= 'Solid_Green';
	END_IF;
END_ACTION