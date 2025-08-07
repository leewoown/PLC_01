
ACTION PMS_SysBatCal: 
	
	PMS.SysBatCal.Field.BSA_Volt_Total := -32767;
	PMS.SysBatCal.Field.BSA_Curr_Total := 0;
	PMS.SysBatCal.Field.BSA_SOC := 0;
	PMS.SysBatDIO.Field.BSA_SOH := 0;
		
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
		
		IF HMI.RackEnable[LoopCount] THEN
			PMS.SysBatCal.Field.BSA_Curr_Total 	:= PMS.SysBatCal.Field.BSA_Curr_Total + SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Curr_Total;
			PMS.SysBatCal.Field.BSA_SOC 		:= PMS.SysBatCal.Field.BSA_SOC + SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_SOC;
			PMS.SysBatDIO.Field.BSA_SOH 		:= PMS.SysBatDIO.Field.BSA_SOH + SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_SOH;
			
			IF SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Volt_Total > PMS.SysBatCal.Field.BSA_Volt_Total THEN
				PMS.SysBatCal.Field.BSA_Volt_Total := SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_Volt_Total;
			END_IF;
		END_IF;
	END_FOR;
	
END_ACTION

ACTION PMS_SysBatPWR:
	PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit := -32767;
	PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit := -32767;
	PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit := -32767;
	PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit := -32767;
		
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
			
		IF HMI.RackEnable[LoopCount] THEN
			IF SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_CHAPWCont > PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit THEN
				PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit 		:= SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_CHAPWCont;
			END_IF;
			IF SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_DisCHAPWCont > PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit THEN
				PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit 		:= SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_DisCHAPWCont;
			END_IF;
			IF SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_CHAPWPeak > PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit THEN
				PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit 		:= SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_CHAPWPeak;
			END_IF;
			IF SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_DisCHAPWPeak > PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit THEN
				PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit 		:= SubBMS_Calculator.BSA[LoopCount].Rack_PWRCalc.Field.BSA_DisCHAPWPeak;
			END_IF;
		
		END_IF;
	END_FOR;
	
	
END_ACTION
	
ACTION PMS_SysCell_Volt_Location: 
	
		
	PMS.SysCellVolt.Field.BSA_Cell_MaxV := -32767;
	PMS.SysCellVolt.Field.BSA_Cell_MinV := 32767;
		
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
			
		IF HMI.RackEnable[LoopCount] THEN
			IF SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Vcalc.Field.BSA_Cell_MaxV > PMS.SysCellVolt.Field.BSA_Cell_MaxV THEN
				
				PMS.SysCellVolt.Field.BSA_Cell_MaxV 			:= SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Vcalc.Field.BSA_Cell_MaxV;
			
				PMS.SysCellV_TPos.Field.BSA_Rack_MaxV_Location	:= LoopCount + 1;
				PMS.SysCellV_TPos.Field.BSA_Cell_MaxV_Location 	:= UINT_TO_USINT(SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location);
			END_IF;
			
			IF SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Vcalc.Field.BSA_Cell_MinV < PMS.SysCellVolt.Field.BSA_Cell_MinV  THEN
				
				PMS.SysCellVolt.Field.BSA_Cell_MinV  			:= SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Vcalc.Field.BSA_Cell_MinV;
			
				PMS.SysCellV_TPos.Field.BSA_Rack_MinV_Location	:= LoopCount + 1;
				PMS.SysCellV_TPos.Field.BSA_Cell_MinV_Location 	:= UINT_TO_USINT(SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location);
			END_IF;
		
		END_IF;
	END_FOR;
		
	PMS.SysCellVolt.Field.BSA_Cell_AVGV 					:= (PMS.SysCellVolt.Field.BSA_Cell_MaxV + PMS.SysCellVolt.Field.BSA_Cell_MinV) / 2;
	PMS.SysCellVolt.Field.BSA_Cell_DeviV 					:= PMS.SysCellVolt.Field.BSA_Cell_MaxV - PMS.SysCellVolt.Field.BSA_Cell_MinV;
		
END_ACTION


ACTION PMS_SysCell_Temps_Location: 
	
		
	PMS.SysCellTemps.Field.BSA_Cell_MaxT := -32767;
	PMS.SysCellTemps.Field.BSA_Cell_MinT := 32767;
		
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
			
		IF HMI.RackEnable[LoopCount] THEN
			IF SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Tcalc.Field.BSA_Cell_MaxT > PMS.SysCellTemps.Field.BSA_Cell_MaxT THEN
				
				PMS.SysCellTemps.Field.BSA_Cell_MaxT 			:= SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Tcalc.Field.BSA_Cell_MaxT;
			
				PMS.SysCellV_TPos.Field.BSA_Rack_MaxT_Location	:= LoopCount + 1;
				PMS.SysCellV_TPos.Field.BSA_Cell_MaxT_Location 	:= UINT_TO_USINT(SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location);
			END_IF;
			
			IF SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Tcalc.Field.BSA_Cell_MinT < PMS.SysCellTemps.Field.BSA_Cell_MinT  THEN
				
				PMS.SysCellTemps.Field.BSA_Cell_MinT  			:= SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Tcalc.Field.BSA_Cell_MinT;
			
				PMS.SysCellV_TPos.Field.BSA_Rack_MinT_Location	:= LoopCount + 1;
				PMS.SysCellV_TPos.Field.BSA_Cell_MinT_Location 	:= UINT_TO_USINT(SubBMS_Calculator.BSA[LoopCount].Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location);
			END_IF;
		
		END_IF;
	END_FOR;
		
	PMS.SysCellTemps.Field.BSA_Cell_AVGT 					:= (PMS.SysCellTemps.Field.BSA_Cell_MaxT + PMS.SysCellTemps.Field.BSA_Cell_MinT) / 2;
	PMS.SysCellTemps.Field.BSA_Cell_DeviT 					:= PMS.SysCellTemps.Field.BSA_Cell_MaxT - PMS.SysCellTemps.Field.BSA_Cell_MinT;
	
	
END_ACTION


ACTION PMS_SysBatProtect:
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC OR SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_OC := TRUE;
			Sys.ProtectSig := TRUE;
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC OR	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_OC := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC OR	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_OC := TRUE;
			Sys.AlarmSig := TRUE;
		END_IF;

		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_SOC_OV  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_SOC_OV  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_SOC_UN  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_SOC_UN  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_SOC_UN  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_OV  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_OV  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_OV  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_UV THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_UV  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_UV THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_UV  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_UV THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_UV  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Cell_OV  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_Cell_OV  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Cell_OV  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Cell_UV  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_Cell_UV  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Cell_UV  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT THEN
			
			PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT  := TRUE;
			Sys.ProtectSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT  := TRUE;
			Sys.FaultSig := TRUE;
			
		ELSIF SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT  := TRUE;
			Sys.AlarmSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_RelayWelding  := TRUE;
			Sys.ProtectSig := TRUE;
	  		
		END_IF;
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err  THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_InternalCOM   := TRUE;
			Sys.ProtectSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_ExternalCOM  := TRUE;
			Sys.ProtectSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err THEN
			
			PMS.SysBatProtect.Field.BSA_Prtct_WaterLeak  := TRUE;
			Sys.ProtectSig := TRUE;
	  		
		END_IF;
		
		IF 	SubBMS_Calculator.BSA[LoopCount].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV THEN
			
			PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV  := TRUE;
			Sys.ProtectSig := TRUE;
	  		
		END_IF;
		
		
	END_FOR;
	
	
END_ACTION

ACTION PMS_SysBatDIO:
	
//	PMS.SysBatDIO.Field.BSA_Prelay_DO_Status
//	PMS.SysBatDIO.Field.BSA_Nrelay_DO_Status
//	PMS.SysBatDIO.Field.BSA_ProRelay_DO_Status
//	PMS.SysBatDIO.Field.BSA_PowerLamp_DO_Status
//	PMS.SysBatDIO.Field.BSA_DO_Spare06
//	PMS.SysBatDIO.Field.BSA_DO_Spare07
//	PMS.SysBatDIO.Field.BSA_DO_Spare08
//	PMS.SysBatDIO.Field.BSA_DO_Spare09
//	PMS.SysBatDIO.Field.BSA_DO_Spare10
//	PMS.SysBatDIO.Field.BSA_DO_Spare11
//	PMS.SysBatDIO.Field.BSA_DO_Spare12
//	PMS.SysBatDIO.Field.BSA_PRelayAUX_DI_Status
//	PMS.SysBatDIO.Field.BSA_NRelayAUX_DI_Status
//	PMS.SysBatDIO.Field.BSA_EMGSwitch_DI_Status 
//	PMS.SysBatDIO.Field.BSA_CoolingSystem_DI_Status 
//	PMS.SysBatDIO.Field.BSA_MDS_DI_Status
//	PMS.SysBatDIO.Field.BSA_DI_Spare06
//	PMS.SysBatDIO.Field.BSA_DI_Spare07
//	PMS.SysBatDIO.Field.BSA_DI_Spare08
//	PMS.SysBatDIO.Field.BSA_DI_Spare09
//	PMS.SysBatDIO.Field.BSA_DI_Spare10
//	PMS.SysBatDIO.Field.BSA_DI_Spare11
//	PMS.SysBatDIO.Field.BSA_DI_Spare12
	
	PMS.SysBatDIO.Field.BSA_SOH := 0;
	
	FOR LoopCount := 0 TO RACK_MAXNUM_MINUS_1 DO
		PMS.SysBatDIO.Field.BSA_SOH := PMS.SysBatDIO.Field.BSA_SOH + SubBMS_Calculator.BSA[LoopCount].Rack_Calc.Field.BRA_SOH;
	END_FOR;
	IF  HMI.DeviceLoading.SetRackNum <> 0 THEN
		PMS.SysBatDIO.Field.BSA_SOH  := PMS.SysBatDIO.Field.BSA_SOH / HMI.DeviceLoading.SetRackNum ;
	END_IF;
	
END_ACTION


ACTION PMS_BRACal:
	
	PMS.BRACal.Field.BRA_Rack_Num					:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	
	PMS.BRACal.Field.BRA_Volt_Total					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total ;
	PMS.BRACal.Field.BRA_Curr_Total					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Curr_Total ;
	PMS.BRACal.Field.BRA_SOC						:= 	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_SOC ;
	
	
END_ACTION
ACTION PMS_BRAPWR_A:
	
	PMS.BRAPWR_A.Field.BRA_Rack_Num					:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	PMS.BRAPWR_A.Field.BRA_SOH						:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_SOH ;
	PMS.BRAPWR_A.Field.BRA_CONT_CHA_PWR_Limit		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_PWRCalc.Field.BSA_CHAPWCont ;
	PMS.BRAPWR_A.Field.BRA_Peak_CHA_PWR_Limit		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_PWRCalc.Field.BSA_CHAPWPeak ;
	
END_ACTION
ACTION PMS_BRAPWR_B:
	
	PMS.BRAPWR_B.Field.BRA_Rack_Num					:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	PMS.BRAPWR_B.Field.BRA_CONT_DisCHA_PWR_Limit	:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_PWRCalc.Field.BSA_DisCHAPWCont ;
	PMS.BRAPWR_B.Field.BRA_Peak_DisCHA_PWR_Limit	:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_PWRCalc.Field.BSA_DisCHAPWPeak ;
	
END_ACTION
ACTION PMS_BRACellV:
	
	PMS.BRACellV.Field.BRA_Rack_Num					:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	PMS.BRACellV.Field.BRA_Cell_Max_Voltage			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Vcalc.Field.BSA_Cell_MaxV ;
	PMS.BRACellV.Field.BRA_Cell_Min_Voltage			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Vcalc.Field.BSA_Cell_MinV ;
	PMS.BRACellV.Field.BRA_Cell_AGV_Voltage			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Vcalc.Field.BSA_Cell_AVGV ;
	
	
	
END_ACTION
ACTION PMS_BRACellT:
	
	PMS.BRACellT.Field.BRA_Rack_Num					:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	PMS.BRACellT.Field.BRA_Cell_Max_Temperature		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Tcalc.Field.BSA_Cell_MaxT ;
	PMS.BRACellT.Field.BRA_Cell_Min_Temperature		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Tcalc.Field.BSA_Cell_MinT ;
	PMS.BRACellT.Field.BRA_Cell_AGV_Temperature		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Tcalc.Field.BSA_Cell_AVGT ;
	
	
	
END_ACTION
ACTION PMS_BRACellDiv:
	
	PMS.BRACellDiv.Field.BRA_Rack_Num				:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	PMS.BRACellDiv.Field.BRA_Cell_DIV_Voltage		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Tcalc.Field.BSA_Cell_DeviT ;
	PMS.BRACellDiv.Field.BRA_Cell_DIV_Temperature	:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Vcalc.Field.BSA_Cell_DeviV ;
	
	
	
END_ACTION
ACTION PMS_BRA_VTPos:
	
	PMS.BRA_VTPos.Field.BRA_Rack_Num					:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	PMS.BRA_VTPos.Field.BRA_Max_Cell_V_Location	:=	UINT_TO_USINT(SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location) ;
	PMS.BRA_VTPos.Field.BRA_Min_Cell_V_Location	:=	UINT_TO_USINT(SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location) ;
	PMS.BRA_VTPos.Field.BRA_Max_Cell_T_Location	:=	UINT_TO_USINT(SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location) ;
	PMS.BRA_VTPos.Field.BRA_Min_Cell_T_Location	:=	UINT_TO_USINT(SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location) ;
	
	
	
END_ACTION
ACTION PMS_BAR_Alarm:
	
	PMS.BAR_Alarm.Field.BRA_Rack_Num					:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	//	PMS.BAR_Alarm.Field.BRA_Alarm_OC				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning. 
	PMS.BAR_Alarm.Field.BRA_Alarm_SOC_OV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV;
	PMS.BAR_Alarm.Field.BRA_Fault_SOC_UN				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un;
	PMS.BAR_Alarm.Field.BRA_Alarm_OV					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_OV;
	PMS.BAR_Alarm.Field.BRA_Alarm_UV					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_UV;
	PMS.BAR_Alarm.Field.BRA_Alarm_Cell_OV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV;
	PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV;
	PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UnBalaV			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV;
	PMS.BAR_Alarm.Field.BRA_Alarm_Discharger_Cell_OT	:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT;
	PMS.BAR_Alarm.Field.BRA_Alarm_Charger_Cell_OT		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT;
	PMS.BAR_Alarm.Field.BRA_Alarm_Charger_Cell_UT		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT;
	PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UnBalaT			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT;
	//	PMS.BAR_Alarm.Field.BRA_Alarm_Continuously_OP	:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.
	//	PMS.BAR_Alarm.Field.BRA_Alarm_Peak_OP			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning.
	//	PMS.BAR_Alarm.Field.BRA_Fault_OC				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.
	PMS.BAR_Alarm.Field.BRA_Fault_SOC_OV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV;
	PMS.BAR_Alarm.Field.BRA_Fault_SOC_UN				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un;
	PMS.BAR_Alarm.Field.BRA_Fault_OV					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_OV;
	PMS.BAR_Alarm.Field.BRA_Fault_UV					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_UV;
	PMS.BAR_Alarm.Field.BRA_Fault_Cell_OV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV;
	PMS.BAR_Alarm.Field.BRA_Fault_Cell_UV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV;
	PMS.BAR_Alarm.Field.BRA_Fault_Cell_UnBalaV			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV;
	PMS.BAR_Alarm.Field.BRA_Fault_Discharger_Cell_OT	:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT;
	PMS.BAR_Alarm.Field.BRA_Fault_Charger_Cell_OT		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT;
	PMS.BAR_Alarm.Field.BRA_Fault_Charger_Cell_UT		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT;
	PMS.BAR_Alarm.Field.BRA_Fault_Cell_UnBalaT			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT;
	//	PMS.BAR_Alarm.Field.BRA_Fault_Continuously_OP	:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.
	//	PMS.BAR_Alarm.Field.BRA_Fault_Peak_OP			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.fault.

END_ACTION
ACTION PMS_BAR_Protect:
	
	PMS.BAR_Protect.Field.BRA_Rack_Num					:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	//	PMS.BAR_Protect.Field.BRA_Prtct_OC					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.warning. 
	PMS.BAR_Protect.Field.BRA_Prtct_SOC_OV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV;
	PMS.BAR_Protect.Field.BRA_Prtct_SOC_UN				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un;
	PMS.BAR_Protect.Field.BRA_Prtct_OV					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_OV;
	PMS.BAR_Protect.Field.BRA_Prtct_UV					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_UV;
	PMS.BAR_Protect.Field.BRA_Prtct_Cell_OV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV;
	PMS.BAR_Protect.Field.BRA_Prtct_Cell_UV				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV;
	PMS.BAR_Protect.Field.BRA_Prtct_Cell_UnBalaV		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV;
	PMS.BAR_Protect.Field.BRA_Prtct_Discharger_Cell_OT	:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT;
	PMS.BAR_Protect.Field.BRA_Prtct_Charger_Cell_OT		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT;
	PMS.BAR_Protect.Field.BRA_Prtct_Charger_Cell_UT		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT;
	PMS.BAR_Protect.Field.BRA_Prtct_Cell_UnBalaT		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT;
	//	PMS.BAR_Protect.Field.BRA_Prtct_Continuously_OP		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.
	//	PMS.BAR_Protect.Field.BRA_Prtct_Peak_OP				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.
	PMS.BAR_Protect.Field.BRA_Prtct_InternalCOM			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err;
	PMS.BAR_Protect.Field.BRA_Prtct_ExternalCOM			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err;
	PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err;
	PMS.BAR_Protect.Field.BRA_Prtct_WaterLeak			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err;
	//	PMS.BAR_Protect.Field.BRA_Prtct_InsulationReg		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV;
	//	PMS.BAR_Protect.Field.BRA_Prtct_MDSFuse				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV;
	//	PMS.BAR_Protect.Field.BRA_Prtct_CoolingSystem		:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV;
	
END_ACTION
ACTION PMS_BAR_DIO:
	
	PMS.BAR_DIO.Field.BRA_Rack_Num						:=	UDINT_TO_UINT(HMI.RackIndex)+1;
	//	PMS.BAR_DIO.Field.BRA_CONT_DisCHA_PWR_Limit			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_Peak_DisCHA_PWR_Limit			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Curr_Total 
	//	PMS.BAR_DIO.Field.BRA_Prelay_DO_Status 				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status 				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status 			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_PowerLamp_DO_Status 			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_Buzzer_DO_Status				:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_PRelayAUX_DI_Status			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_NRelayAUX_DI_Status 			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_EMGSwitch_DI_Status 			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	//	PMS.BAR_DIO.Field.BRA_MDS_DI_Status					:=	SubBMS_Calculator.BSA[HMI.RackIndex].Rack_Calc.Field.BRA_Volt_Total 
	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD1			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Modul1_Info.Field.OPS_Waterleak_Err ;
	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD2			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Modul2_Info.Field.OPS_Waterleak_Err ;
	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD3			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Modul3_Info.Field.OPS_Waterleak_Err ;
	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD4			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Modul4_Info.Field.OPS_Waterleak_Err ;
	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD5			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Modul5_Info.Field.OPS_Waterleak_Err ;
	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD6			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Modul6_Info.Field.OPS_Waterleak_Err ;
	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD7			:=	SubBMS_Calculator.BSA[HMI.RackIndex].Modul7_Info.Field.OPS_Waterleak_Err ;

END_ACTION
