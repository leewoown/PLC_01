ACTION AtRackUI :
	
	CASE Rack_HMI.Rack_State.Field.BSA_Divice_Status OF
		0:  HMI.BSA_Divice_Status := 'NONE';
		1:  HMI.BSA_Divice_Status := 'IDEL';
		2:  HMI.BSA_Divice_Status := 'STANDBY';
		3:  HMI.BSA_Divice_Status := 'READY';
		4:  HMI.BSA_Divice_Status := 'RUN';
		5:  HMI.BSA_Divice_Status := 'PROTECT';
		6:  HMI.BSA_Divice_Status := 'STOP';
	END_CASE;
	
	HMI.Gauge.BRA_Volt_Total		:= (Rack_HMI.Rack_Calc.Field.BRA_Volt_Total) ;
	HMI.Gauge.BRA_Volt_Total_A		:= REAL_TO_STRING((HMI.Gauge.BRA_Volt_Total-400)*0.675);
	HMI.Gauge.BRA_Volt_Total_B		:= CONCAT('[{"select":"#gauge3","spin":[',CONCAT(HMI.Gauge.BRA_Volt_Total_A,',0,0]}]'));
	
	HMI.Gauge.BRA_Curr_Total 			:= (Rack_HMI.Rack_Calc.Field.BRA_Curr_Total) ;
	HMI.Gauge.BRA_Curr_Total_A		:= REAL_TO_STRING(HMI.Gauge.BRA_Curr_Total*0.27+135);
	HMI.Gauge.BRA_Curr_Total_B		:= CONCAT('[{"select":"#gauge4","spin":[',CONCAT(HMI.Gauge.BRA_Curr_Total_A,',0,0]}]'));
	
	HMI.Gauge.BRA_SOC		:= (Rack_HMI.Rack_Calc.Field.BRA_SOC)  ;
	HMI.Gauge.BRA_SOC_A		:= REAL_TO_STRING(HMI.Gauge.BRA_SOC*2.7);
	HMI.Gauge.BRA_SOC_B		:= CONCAT('[{"select":"#gauge1","spin":[',CONCAT(HMI.Gauge.BRA_SOC_A,',0,0]}]'));
	
	HMI.Gauge.BRA_SOH		:= (Rack_HMI.Rack_Calc.Field.BRA_SOH) ;
	HMI.Gauge.BRA_SOH_A		:= REAL_TO_STRING(HMI.Gauge.BRA_SOH*2.7);
	HMI.Gauge.BRA_SOH_B		:= CONCAT('[{"select":"#gauge2","spin":[',CONCAT(HMI.Gauge.BRA_SOH_A,',0,0]}]'));
	
	HMI.BatteryInfo.BSA_Cell_MaxV 		:= (Rack_HMI.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV);
	HMI.BatteryInfo.BSA_Cell_MinV		:= (Rack_HMI.Rack_Cell_Vcalc.Field.BSA_Cell_MinV) ;
	HMI.BatteryInfo.BSA_Cell_AVGV		:= (Rack_HMI.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV)  ;
	HMI.BatteryInfo.BSA_Cell_DeviV 		:= (Rack_HMI.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV)  ;

	HMI.BatteryInfo.BSA_Cell_MaxT 		:= (Rack_HMI.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT)  ;
	HMI.BatteryInfo.BSA_Cell_MinT		:= (Rack_HMI.Rack_Cell_Tcalc.Field.BSA_Cell_MinT	) ;
	HMI.BatteryInfo.BSA_Cell_AVGT		:= (Rack_HMI.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT)  ;
	HMI.BatteryInfo.BSA_Cell_DeviT 		:= (Rack_HMI.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT) ;

	
	HMI.BatteryInfo.BSA_Cell_MaxV_Cell_Location		:= UINT_TO_STRING(Rack_HMI.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location) ;
	
	HMI.BatteryInfo.BSA_Cell_MaxV_Location		:= CONCAT(HMI.BatteryInfo.BSA_Cell_MaxV_Cell_Location,'(C)');
	HMI.BatteryInfo.BSA_Cell_MinV_Cell_Location		:= UINT_TO_STRING(Rack_HMI.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location) ;
	
	HMI.BatteryInfo.BSA_Cell_MinV_Location		:= CONCAT(HMI.BatteryInfo.BSA_Cell_MinV_Cell_Location,'(C)');
	HMI.BatteryInfo.BSA_Cell_MaxT_Cell_Location		:= UINT_TO_STRING((Rack_HMI.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location)) ;
	
	HMI.BatteryInfo.BSA_Cell_MaxT_Location		:= CONCAT(HMI.BatteryInfo.BSA_Cell_MaxT_Cell_Location,'(C)');
	
	HMI.BatteryInfo.BSA_Cell_MinT_Cell_Location 		:= UINT_TO_STRING(Rack_HMI.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location) ;
	
	HMI.BatteryInfo.BSA_Cell_MinT_Location		:= CONCAT(HMI.BatteryInfo.BSA_Cell_MinT_Cell_Location,'(C)');
	
	HMI.Module1Info.Volt_Total_A 	:= REAL_TO_STRING(Rack_HMI.Modul1_Info.Field.Volt_Total) ; 
	HMI.Module1Info.Volt_Total_B		:= CONCAT(HMI.Module1Info.Volt_Total_A,'(V)');
	
	IF (Rack_HMI.Modul1_Info.Field.OPS_Fault) THEN
		HMI.Module1Info.OPS_Fault := 'Solid_Red';
	ELSE
		HMI.Module1Info.OPS_Fault := 'Solid_Green';
	END_IF;
	
	IF (Rack_HMI.Modul1_Info.Field.OPS_MBCOM_Err) THEN
		HMI.Module1Info.OPS_MBCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module1Info.OPS_MBCOM_Err := 'Solid_Green';
	END_IF;	
	
	IF (Rack_HMI.Modul1_Info.Field.CTCOM_Err) THEN
		HMI.Module1Info.CTCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module1Info.CTCOM_Err := 'Solid_Green';
	END_IF;
	
	HMI.Module2Info.Volt_Total_A 	:= REAL_TO_STRING(Rack_HMI.Modul2_Info.Field.Volt_Total) ; 
	HMI.Module2Info.Volt_Total_B		:= CONCAT(HMI.Module2Info.Volt_Total_A,'(V)');
	
	IF (Rack_HMI.Modul2_Info.Field.OPS_Fault) THEN
		HMI.Module2Info.OPS_Fault := 'Solid_Red';
	ELSE
		HMI.Module2Info.OPS_Fault := 'Solid_Green';
	END_IF;
	
	IF (Rack_HMI.Modul2_Info.Field.OPS_MBCOM_Err) THEN
		HMI.Module2Info.OPS_MBCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module2Info.OPS_MBCOM_Err := 'Solid_Green';
	END_IF;	
	
	IF (Rack_HMI.Modul2_Info.Field.CTCOM_Err) THEN
		HMI.Module2Info.CTCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module2Info.CTCOM_Err := 'Solid_Green';
	END_IF;
	
	HMI.Module3Info.Volt_Total_A 	:= REAL_TO_STRING(Rack_HMI.Modul3_Info.Field.Volt_Total) ; 
	HMI.Module3Info.Volt_Total_B		:= CONCAT(HMI.Module3Info.Volt_Total_A,'(V)');
	
	IF (Rack_HMI.Modul3_Info.Field.OPS_Fault) THEN
		HMI.Module3Info.OPS_Fault := 'Solid_Red';
	ELSE
		HMI.Module3Info.OPS_Fault := 'Solid_Green';
	END_IF;
	
	IF (Rack_HMI.Modul3_Info.Field.OPS_MBCOM_Err) THEN
		HMI.Module3Info.OPS_MBCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module3Info.OPS_MBCOM_Err := 'Solid_Green';
	END_IF;	
	
	IF (Rack_HMI.Modul3_Info.Field.CTCOM_Err) THEN
		HMI.Module3Info.CTCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module3Info.CTCOM_Err := 'Solid_Green';
	END_IF;
	
	HMI.Module4Info.Volt_Total_A 	:= REAL_TO_STRING(Rack_HMI.Modul4_Info.Field.Volt_Total) ; 
	HMI.Module4Info.Volt_Total_B		:= CONCAT(HMI.Module4Info.Volt_Total_A,'(V)');
	
	IF (Rack_HMI.Modul4_Info.Field.OPS_Fault) THEN
		HMI.Module4Info.OPS_Fault := 'Solid_Red';
	ELSE
		HMI.Module4Info.OPS_Fault := 'Solid_Green';
	END_IF;
	
	IF (Rack_HMI.Modul4_Info.Field.OPS_MBCOM_Err) THEN
		HMI.Module4Info.OPS_MBCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module4Info.OPS_MBCOM_Err := 'Solid_Green';
	END_IF;	
	
	IF (Rack_HMI.Modul4_Info.Field.CTCOM_Err) THEN
		HMI.Module4Info.CTCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module4Info.CTCOM_Err := 'Solid_Green';
	END_IF;
	
	HMI.Module5Info.Volt_Total_A 	:= REAL_TO_STRING(Rack_HMI.Modul5_Info.Field.Volt_Total) ; 
	HMI.Module5Info.Volt_Total_B		:= CONCAT(HMI.Module5Info.Volt_Total_A,'(V)');
	
	IF (Rack_HMI.Modul5_Info.Field.OPS_Fault) THEN
		HMI.Module5Info.OPS_Fault := 'Solid_Red';
	ELSE
		HMI.Module5Info.OPS_Fault := 'Solid_Green';
	END_IF;
	
	IF (Rack_HMI.Modul5_Info.Field.OPS_MBCOM_Err) THEN
		HMI.Module5Info.OPS_MBCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module5Info.OPS_MBCOM_Err := 'Solid_Green';
	END_IF;	
	
	IF (Rack_HMI.Modul5_Info.Field.CTCOM_Err) THEN
		HMI.Module5Info.CTCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module5Info.CTCOM_Err := 'Solid_Green';
	END_IF;
	
	HMI.Module6Info.Volt_Total_A 	:= REAL_TO_STRING(Rack_HMI.Modul6_Info.Field.Volt_Total) ; 
	HMI.Module6Info.Volt_Total_B		:= CONCAT(HMI.Module6Info.Volt_Total_A,'(V)');
	
	IF (Rack_HMI.Modul6_Info.Field.OPS_Fault) THEN
		HMI.Module6Info.OPS_Fault := 'Solid_Red';
	ELSE
		HMI.Module6Info.OPS_Fault := 'Solid_Green';
	END_IF;
	
	IF (Rack_HMI.Modul6_Info.Field.OPS_MBCOM_Err) THEN
		HMI.Module6Info.OPS_MBCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module6Info.OPS_MBCOM_Err := 'Solid_Green';
	END_IF;	
	
	IF (Rack_HMI.Modul6_Info.Field.CTCOM_Err) THEN
		HMI.Module6Info.CTCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module6Info.CTCOM_Err := 'Solid_Green';
	END_IF;
	
	HMI.Module7Info.Volt_Total_A 	:= REAL_TO_STRING(Rack_HMI.Modul7_Info.Field.Volt_Total) ; 
	HMI.Module7Info.Volt_Total_B		:= CONCAT(HMI.Module7Info.Volt_Total_A,'(V)');
	
	IF (Rack_HMI.Modul7_Info.Field.OPS_Fault) THEN
		HMI.Module7Info.OPS_Fault := 'Solid_Red';
	ELSE
		HMI.Module7Info.OPS_Fault := 'Solid_Green';
	END_IF;
	
	IF (Rack_HMI.Modul7_Info.Field.OPS_MBCOM_Err) THEN
		HMI.Module7Info.OPS_MBCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module7Info.OPS_MBCOM_Err := 'Solid_Green';
	END_IF;	
	
	IF (Rack_HMI.Modul7_Info.Field.CTCOM_Err) THEN
		HMI.Module7Info.CTCOM_Err := 'Solid_Red';
	ELSE
		HMI.Module7Info.CTCOM_Err := 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_State.Field.BSA_Water_leak THEN
		HMI.DIOStatus.BSA_Water_leak			:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_Water_leak			:= 'Solid_Green';
	END_IF;
	IF Rack_HMI.Rack_State.Field.BSA_Neg_Rly THEN
		HMI.DIOStatus.BSA_Neg_Rly		:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_Neg_Rly		:= 'Solid_Green';			
	END_IF;
	IF Rack_HMI.Rack_State.Field.BSA_Pos_Rly THEN
		HMI.DIOStatus.BSA_Pos_Rly		:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_Pos_Rly		:= 'Solid_Green';
	END_IF;
	IF Rack_HMI.Rack_State.Field.BSA_PreChar_Rly THEN
		HMI.DIOStatus.BSA_PreChar_Rly		:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_PreChar_Rly		:= 'Solid_Green';
	END_IF;
	
	(* Over Current *)
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC  THEN
		HMI.ProtectStatus.BSA_Charge_OC		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC  THEN
		HMI.ProtectStatus.BSA_Charge_OC		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC  THEN		
		HMI.ProtectStatus.BSA_Charge_OC		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Charge_OC		:= 'Solid_Green';
	END_IF;
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC THEN
		HMI.ProtectStatus.BSA_Discharge_OC		:= 'Solid_Red';
	ELSIF  Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC THEN
		HMI.ProtectStatus.BSA_Discharge_OC		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC THEN		
		HMI.ProtectStatus.BSA_Discharge_OC		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Discharge_OC		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV THEN
		HMI.ProtectStatus.BSA_SOC_OV		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV THEN
		HMI.ProtectStatus.BSA_SOC_OV		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV THEN		
		HMI.ProtectStatus.BSA_SOC_OV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_SOC_OV		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un THEN
		HMI.ProtectStatus.BSA_SOC_Un		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un THEN
		HMI.ProtectStatus.BSA_SOC_Un		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un THEN		
		HMI.ProtectStatus.BSA_SOC_Un		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_SOC_Un		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_OV THEN
		HMI.ProtectStatus.BSA_OV		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_OV THEN
		HMI.ProtectStatus.BSA_OV		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_OV THEN		
		HMI.ProtectStatus.BSA_OV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_OV		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_UV THEN
		HMI.ProtectStatus.BSA_UV		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_UV THEN
		HMI.ProtectStatus.BSA_UV		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_UV  THEN		
		HMI.ProtectStatus.BSA_UV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_UV		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV THEN
		HMI.ProtectStatus.BSA_Cell_OV		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV THEN
		HMI.ProtectStatus.BSA_Cell_OV		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV THEN		
		HMI.ProtectStatus.BSA_Cell_OV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Cell_OV		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV THEN
		HMI.ProtectStatus.BSA_Cell_UV		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV THEN
		HMI.ProtectStatus.BSA_Cell_UV		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV THEN		
		HMI.ProtectStatus.BSA_Cell_UV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Cell_UV		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV THEN
		HMI.ProtectStatus.BSA_Cell_UnbalV		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV THEN
		HMI.ProtectStatus.BSA_Cell_UnbalV		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV THEN		
		HMI.ProtectStatus.BSA_Cell_UnbalV		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Cell_UnbalV		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_OT		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_OT		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT THEN		
		HMI.ProtectStatus.BSA_DisCharger_Cell_OT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_DisCharger_Cell_OT		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT THEN
		HMI.ProtectStatus.BSA_Charger_Cell_OT		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT THEN
		HMI.ProtectStatus.BSA_Charger_Cell_OT		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT THEN		
		HMI.ProtectStatus.BSA_Charger_Cell_OT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Charger_Cell_OT		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT THEN
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT THEN		
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_DisCharger_Cell_UT		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT THEN
		HMI.ProtectStatus.BSA_Charger_Cell_UT		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT THEN
		HMI.ProtectStatus.BSA_Charger_Cell_UT		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT THEN		
		HMI.ProtectStatus.BSA_Charger_Cell_UT		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Charger_Cell_UT		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT THEN
		HMI.ProtectStatus.BSA_Cell_UnbalT			:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT THEN
		HMI.ProtectStatus.BSA_Cell_UnbalT			:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT THEN		
		HMI.ProtectStatus.BSA_Cell_UnbalT			:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Cell_UnbalT			:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR THEN
		HMI.ProtectStatus.BSA_Discharge_Unbal_PWR	:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR THEN
		HMI.ProtectStatus.BSA_Discharge_Unbal_PWR	:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR THEN		
		HMI.ProtectStatus.BSA_Discharge_Unbal_PWR	:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Discharge_Unbal_PWR	:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR THEN
		HMI.ProtectStatus.BSA_Charge_Unbal_PWR		:= 'Solid_Red';
	ELSIF Rack_HMI.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR THEN
		HMI.ProtectStatus.BSA_Charge_Unbal_PWR		:= 'Solid_Orange';
	ELSIF Rack_HMI.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR THEN		
		HMI.ProtectStatus.BSA_Charge_Unbal_PWR		:= 'Solid_Yellow';
	ELSE
		HMI.ProtectStatus.BSA_Charge_Unbal_PWR		:= 'Solid_Green';
	END_IF;
	
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err THEN
		HMI.ProtectStatus.BSA_Prtct_Rly_Err			:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_Rly_Err			:= 'Solid_Green';
	END_IF;
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err THEN
		HMI.ProtectStatus.BSA_Prtct_IN_COM_Err		:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_IN_COM_Err		:= 'Solid_Green';			
	END_IF;
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err THEN
		HMI.ProtectStatus.BSA_Prtct_EX_COM_Err		:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_EX_COM_Err		:= 'Solid_Green';
	END_IF;
	//	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err THEN
	//		HMI.ProtectStatus.BSA_Prtct_InsulationRegister		:= 'Solid_Red';
	//	ELSE
	//		HMI.ProtectStatus.BSA_Prtct_InsulationRegister		:= 'Solid_Green';
	//	END_IF;
	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err THEN
		HMI.ProtectStatus.BSA_Prtct_Water_Leak_Err	:= 'Solid_Red';
	ELSE
		HMI.ProtectStatus.BSA_Prtct_Water_Leak_Err	:= 'Solid_Green';
	END_IF;
	//	IF Rack_HMI.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err THEN
	//		HMI.ProtectStatus.BSA_Prtct_MDS		:= 'Solid_Red';
	//	ELSE
	//		HMI.ProtectStatus.BSA_Prtct_MDS		:= 'Solid_Green';
	//	END_IF;
	
	(* DIO *)
	//	IF HMI.Rack1[19].0 THEN
	//		HMIBinding.RackUI.sString20[34] 		:= 'Solid_Red';
	//	ELSE
	//		HMIBinding.RackUI.sString20[34]			:= 'Solid_Green';
	//	END_IF;
	//	IF HMI.Rack1[19].1 THEN
	//		HMIBinding.RackUI.sString20[35] 		:= 'Solid_Red';
	//	ELSE
	//		HMIBinding.RackUI.sString20[35]			:= 'Solid_Green';
	//	END_IF;
	//	IF HMI.Rack1[19].2 THEN
	//		HMIBinding.RackUI.sString20[36] 		:= 'Solid_Red';
	//	ELSE
	//		HMIBinding.RackUI.sString20[36]			:= 'Solid_Green';
	//	END_IF;
	//	IF HMI.Rack1[20].2 THEN
	//		HMIBinding.RackUI.sString20[37] 		:= 'Solid_Red';
	//	ELSE
	//		HMIBinding.RackUI.sString20[37]			:= 'Solid_Green';
	//	END_IF;
	//	IF HMI.Rack1[20].4 THEN
	//		HMIBinding.RackUI.sString20[38] 		:= 'Solid_Red';
	//	ELSE
	//		HMIBinding.RackUI.sString20[38]			:= 'Solid_Green';
	//	END_IF;
	//	IF HMI.Rack1[20].5 THEN
	//		HMIBinding.RackUI.sString20[39] 		:= 'Solid_Red';
	//	ELSE
	//		HMIBinding.RackUI.sString20[39]			:= 'Solid_Green';
	//	END_IF;
	
END_ACTION

