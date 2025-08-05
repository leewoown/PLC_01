ACTION ActPMSDATATxParshing: 
	
	PMS.SysBatProduct.Value[0]		:= SHL(USINT_TO_DWORD(PMS.SysBatProduct.Field.BSA_Production_Num), 24) OR SHL(USINT_TO_DWORD(PMS.SysBatProduct.Field.BSA_Production_Type), 16) OR UINT_TO_DWORD(PMS.SysBatProduct.Field.BSA_Production_Year);
	PMS.SysBatProduct.Value[1]		:= SHL(USINT_TO_DWORD(PMS.SysBatProduct.Field.BSA_Production_BSA_Parallel), 16) OR SHL(USINT_TO_DWORD(PMS.SysBatProduct.Field.BSA_Production_BSA_Serial), 8) OR USINT_TO_DWORD(PMS.SysBatProduct.Field.BSA_Production_VER);
	
		
	PMS.SysBatCal.Value[0]			:= SHL(REAL_TO_DWORD(PMS.SysBatCal.Field.BSA_Curr_Total), 16) OR REAL_TO_DWORD(PMS.SysBatCal.Field.BSA_Volt_Total);
	PMS.SysBatCal.Value[1] 			:= SHL(UINT_TO_DWORD(PMS.SysBatCal.Field.BSA_Divice_Status), 16) OR REAL_TO_DWORD(PMS.SysBatCal.Field.BSA_SOC);
	
	
	PMS.SysBatPWR.Value[0]			:= SHL(REAL_TO_DWORD(PMS.SysBatPWR.Field.BSA_Peak_Charge_Power_Limit), 16) OR REAL_TO_DWORD(PMS.SysBatPWR.Field.BSA_Cont_Charge_Power_Limit);
	PMS.SysBatPWR.Value[1] 			:= SHL(REAL_TO_DWORD(PMS.SysBatPWR.Field.BSA_Peak_Discharge_Power_Limit), 16) OR REAL_TO_DWORD(PMS.SysBatPWR.Field.BSA_Cont_Discharge_Power_Limit);
	
	
	PMS.SysCellVolt.Value[0]		:= SHL(REAL_TO_DWORD(PMS.SysCellVolt.Field.BSA_Cell_MinV), 16) OR REAL_TO_DWORD(PMS.SysCellVolt.Field.BSA_Cell_MaxV);
	PMS.SysCellVolt.Value[1] 		:= SHL(REAL_TO_DWORD(PMS.SysCellVolt.Field.BSA_Cell_DeviV), 16) OR REAL_TO_DWORD(PMS.SysCellVolt.Field.BSA_Cell_AVGV);
	
	
	PMS.SysCellTemps.Value[0]		:= SHL(REAL_TO_DWORD(PMS.SysCellTemps.Field.BSA_Cell_MinT), 16) OR REAL_TO_DWORD(PMS.SysCellTemps.Field.BSA_Cell_MaxT);
	PMS.SysCellTemps.Value[1] 		:= SHL(REAL_TO_DWORD(PMS.SysCellTemps.Field.BSA_Cell_DeviT), 16) OR REAL_TO_DWORD(PMS.SysCellTemps.Field.BSA_Cell_AVGT);
	
	
	PMS.SysCellV_TPos.Value[0]		:= SHL(UINT_TO_DWORD(PMS.SysCellV_TPos.Field.BSA_Cell_MinV_Location), 24) OR SHL(UINT_TO_DWORD(PMS.SysCellV_TPos.Field.BSA_Rack_MinV_Location), 16) OR SHL(USINT_TO_DWORD(PMS.SysCellV_TPos.Field.BSA_Cell_MinV_Location), 8) OR UINT_TO_DWORD(PMS.SysCellV_TPos.Field.BSA_Rack_MaxV_Location);
	PMS.SysCellV_TPos.Value[1] 		:= SHL(UINT_TO_DWORD(PMS.SysCellV_TPos.Field.BSA_Cell_MinT_Location), 24) OR SHL(UINT_TO_DWORD(PMS.SysCellV_TPos.Field.BSA_Rack_MinT_Location), 16) OR SHL(USINT_TO_DWORD(PMS.SysCellV_TPos.Field.BSA_Cell_MinT_Location), 8) OR UINT_TO_DWORD(PMS.SysCellV_TPos.Field.BSA_Rack_MaxT_Location);
	
	
	PMS.SysBatProtect.Value[0].0	:=	PMS.SysBatProtect.Field.BSA_Alarm_OC	;
	PMS.SysBatProtect.Value[0].1	:=	PMS.SysBatProtect.Field.BSA_Alarm_SOC_OV	;
	PMS.SysBatProtect.Value[0].2	:=	PMS.SysBatProtect.Field.BSA_Alarm_SOC_UN	;
	PMS.SysBatProtect.Value[0].3	:=	PMS.SysBatProtect.Field.BSA_Alarm_OV	;
	PMS.SysBatProtect.Value[0].4	:=	PMS.SysBatProtect.Field.BSA_Alarm_UV	;
	PMS.SysBatProtect.Value[0].5	:=	PMS.SysBatProtect.Field.BSA_Alarm_Cell_OV	;
	PMS.SysBatProtect.Value[0].6	:=	PMS.SysBatProtect.Field.BSA_Alarm_Cell_UV	;
	PMS.SysBatProtect.Value[0].7	:=	PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaV	;
	PMS.SysBatProtect.Value[0].8	:=	PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_OT	;
	PMS.SysBatProtect.Value[0].9	:=	PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_OT	;
	PMS.SysBatProtect.Value[0].10	:=	PMS.SysBatProtect.Field.BSA_Alarm_Discharger_Cell_UT	;
	PMS.SysBatProtect.Value[0].11	:=	PMS.SysBatProtect.Field.BSA_Alarm_Charger_Cell_UT	;
	PMS.SysBatProtect.Value[0].12	:=	PMS.SysBatProtect.Field.BSA_Alarm_Cell_UnBalaT	;
	PMS.SysBatProtect.Value[0].13	:=	PMS.SysBatProtect.Field.BSA_Alarm_Continuously_OP	;
	PMS.SysBatProtect.Value[0].14	:=	PMS.SysBatProtect.Field.BSA_Alarm_Peak_OP	;
	
	PMS.SysBatProtect.Value[0].16	:=	PMS.SysBatProtect.Field.BSA_Fault_OC	;
	PMS.SysBatProtect.Value[0].17	:=	PMS.SysBatProtect.Field.BSA_Fault_SOC_OV	;
	PMS.SysBatProtect.Value[0].18	:=	PMS.SysBatProtect.Field.BSA_Fault_SOC_UN	;
	PMS.SysBatProtect.Value[0].19	:=	PMS.SysBatProtect.Field.BSA_Fault_OV	;
	PMS.SysBatProtect.Value[0].20	:=	PMS.SysBatProtect.Field.BSA_Fault_UV	;
	PMS.SysBatProtect.Value[0].21	:=	PMS.SysBatProtect.Field.BSA_Fault_Cell_OV	;
	PMS.SysBatProtect.Value[0].22	:=	PMS.SysBatProtect.Field.BSA_Fault_Cell_UV	;
	PMS.SysBatProtect.Value[0].23	:=	PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaV	;
	PMS.SysBatProtect.Value[0].24	:=	PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_OT	;
	PMS.SysBatProtect.Value[0].25	:=	PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_OT	;
	PMS.SysBatProtect.Value[0].26	:=	PMS.SysBatProtect.Field.BSA_Fault_Discharger_Cell_UT	;
	PMS.SysBatProtect.Value[0].27	:=	PMS.SysBatProtect.Field.BSA_Fault_Charger_Cell_UT	;
	PMS.SysBatProtect.Value[0].28	:=	PMS.SysBatProtect.Field.BSA_Fault_Cell_UnBalaT	;
	PMS.SysBatProtect.Value[0].29	:=	PMS.SysBatProtect.Field.BSA_Fault_Continuously_OP	;
	PMS.SysBatProtect.Value[0].30	:=	PMS.SysBatProtect.Field.BSA_Fault_Peak_OP	;
	PMS.SysBatProtect.Value[1].0	:=	PMS.SysBatProtect.Field.BSA_Prtct_OC	;
	PMS.SysBatProtect.Value[1].1	:=	PMS.SysBatProtect.Field.BSA_Prtct_SOC_OV	;
	PMS.SysBatProtect.Value[1].2	:=	PMS.SysBatProtect.Field.BSA_Prtct_SOC_UN	;
	PMS.SysBatProtect.Value[1].3	:=	PMS.SysBatProtect.Field.BSA_Prtct_OV	;
	PMS.SysBatProtect.Value[1].4	:=	PMS.SysBatProtect.Field.BSA_Prtct_UV	;
	PMS.SysBatProtect.Value[1].5	:=	PMS.SysBatProtect.Field.BSA_Prtct_Cell_OV	;
	PMS.SysBatProtect.Value[1].6	:=	PMS.SysBatProtect.Field.BSA_Prtct_Cell_UV	;
	PMS.SysBatProtect.Value[1].7	:=	PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaV	;
	PMS.SysBatProtect.Value[1].8	:=	PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_OT	;
	PMS.SysBatProtect.Value[1].9	:=	PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_OT	;
	PMS.SysBatProtect.Value[1].10	:=	PMS.SysBatProtect.Field.BSA_Prtct_Discharger_Cell_UT	;
	PMS.SysBatProtect.Value[1].11	:=	PMS.SysBatProtect.Field.BSA_Prtct_Charger_Cell_UT	;
	PMS.SysBatProtect.Value[1].12	:=	PMS.SysBatProtect.Field.BSA_Prtct_Cell_UnBalaT	;
	PMS.SysBatProtect.Value[1].13	:=	PMS.SysBatProtect.Field.BSA_Prtct_Continuously_OP	;
	PMS.SysBatProtect.Value[1].14	:=	PMS.SysBatProtect.Field.BSA_Prtct_Peak_OP	;
	PMS.SysBatProtect.Value[1].15	:=	PMS.SysBatProtect.Field.BSA_Prtct_InternalCOM	;
	PMS.SysBatProtect.Value[1].16	:=	PMS.SysBatProtect.Field.BSA_Prtct_ExternalCOM	;
	PMS.SysBatProtect.Value[1].17	:=	PMS.SysBatProtect.Field.BSA_Prtct_RelayWelding	;
	PMS.SysBatProtect.Value[1].18	:=	PMS.SysBatProtect.Field.BSA_Prtct_WaterLeak	;
	PMS.SysBatProtect.Value[1].19	:=	PMS.SysBatProtect.Field.BSA_Prtct_InsulationReg	;
	PMS.SysBatProtect.Value[1].20	:=	PMS.SysBatProtect.Field.BSA_Prtct_MDSFuse	;
	PMS.SysBatProtect.Value[1].21	:=	PMS.SysBatProtect.Field.BSA_Prtct_Cooling_System	;
	
	
	PMS.SysBatDIO.Value[0].0		:=	PMS.SysBatDIO.Field.BSA_Prelay_DO_Status	;
	PMS.SysBatDIO.Value[0].1		:=	PMS.SysBatDIO.Field.BSA_Nrelay_DO_Status	;
	PMS.SysBatDIO.Value[0].2		:=	PMS.SysBatDIO.Field.BSA_ProRelay_DO_Status	;
	PMS.SysBatDIO.Value[0].3		:=	PMS.SysBatDIO.Field.BSA_Buzzer_DO_Status	;
	PMS.SysBatDIO.Value[0].4		:=	PMS.SysBatDIO.Field.BSA_PowerLamp_DO_Status	;
	PMS.SysBatDIO.Value[0].5		:=	PMS.SysBatDIO.Field.BSA_DO_Spare06	;
	PMS.SysBatDIO.Value[0].6		:=	PMS.SysBatDIO.Field.BSA_DO_Spare07	;
	PMS.SysBatDIO.Value[0].7		:=	PMS.SysBatDIO.Field.BSA_DO_Spare08	;
	PMS.SysBatDIO.Value[0].8		:=	PMS.SysBatDIO.Field.BSA_DO_Spare09	;
	PMS.SysBatDIO.Value[0].9		:=	PMS.SysBatDIO.Field.BSA_DO_Spare10	;
	PMS.SysBatDIO.Value[0].10		:=	PMS.SysBatDIO.Field.BSA_DO_Spare11	;
	PMS.SysBatDIO.Value[0].11		:=	PMS.SysBatDIO.Field.BSA_DO_Spare12	;
	PMS.SysBatDIO.Value[0].12		:=	PMS.SysBatDIO.Field.BSA_PRelayAUX_DI_Status	;
	PMS.SysBatDIO.Value[0].13		:=	PMS.SysBatDIO.Field.BSA_NRelayAUX_DI_Status	;
	PMS.SysBatDIO.Value[0].14		:=	PMS.SysBatDIO.Field.BSA_EMGSwitch_DI_Status ;
	PMS.SysBatDIO.Value[0].15		:=	PMS.SysBatDIO.Field.BSA_CoolingSystem_DI_Status  ;
	PMS.SysBatDIO.Value[0].16		:=	PMS.SysBatDIO.Field.BSA_MDS_DI_Status	;
	PMS.SysBatDIO.Value[0].17		:=	PMS.SysBatDIO.Field.BSA_DI_Spare06	;
	PMS.SysBatDIO.Value[0].18		:=	PMS.SysBatDIO.Field.BSA_DI_Spare07	;
	PMS.SysBatDIO.Value[0].19		:=	PMS.SysBatDIO.Field.BSA_DI_Spare08	;
	PMS.SysBatDIO.Value[0].20		:=	PMS.SysBatDIO.Field.BSA_DI_Spare09	;
	PMS.SysBatDIO.Value[0].21		:=	PMS.SysBatDIO.Field.BSA_DI_Spare10	;
	PMS.SysBatDIO.Value[0].22		:=	PMS.SysBatDIO.Field.BSA_DI_Spare11	;
	PMS.SysBatDIO.Value[0].23		:=	PMS.SysBatDIO.Field.BSA_DI_Spare12	;
	PMS.SysBatDIO.Value[1]			:= SHL(REAL_TO_DWORD(PMS.SysBatDIO.Field.BSA_SOH), 16);
	
	
	PMS.BRACal.Value[0]				:= SHL(REAL_TO_DWORD(PMS.BRACal.Field.BRA_Volt_Total), 16) OR UINT_TO_DWORD(PMS.BRACal.Field.BRA_Rack_Num);
	PMS.BRACal.Value[1] 			:= SHL(REAL_TO_DWORD(PMS.BRACal.Field.BRA_SOC), 16) OR REAL_TO_DWORD(PMS.BRACal.Field.BRA_Curr_Total);
	
	
	PMS.BRAPWR_A.Value[0]			:= SHL(REAL_TO_DWORD(PMS.BRAPWR_A.Field.BRA_SOH), 16) OR UINT_TO_DWORD(PMS.BRAPWR_A.Field.BRA_Rack_Num);
	PMS.BRAPWR_A.Value[1] 			:= SHL(REAL_TO_DWORD(PMS.BRAPWR_A.Field.BRA_Peak_CHA_PWR_Limit), 16) OR REAL_TO_DWORD(PMS.BRAPWR_A.Field.BRA_CONT_CHA_PWR_Limit);
	
	
	PMS.BRAPWR_B.Value[0]			:= SHL(REAL_TO_DWORD(PMS.BRAPWR_B.Field.BRA_CONT_DisCHA_PWR_Limit), 16) OR UINT_TO_DWORD(PMS.BRACal.Field.BRA_Rack_Num);
	PMS.BRAPWR_B.Value[1] 			:= REAL_TO_DWORD(PMS.BRAPWR_B.Field.BRA_Peak_DisCHA_PWR_Limit);
	
	
	PMS.BRACal.Value[0]				:= SHL(REAL_TO_DWORD(PMS.BRACal.Field.BRA_Volt_Total), 16) OR UINT_TO_DWORD(PMS.BRACal.Field.BRA_Rack_Num);
	PMS.BRACal.Value[1] 			:= SHL(REAL_TO_DWORD(PMS.BRACal.Field.BRA_SOC), 16) OR REAL_TO_DWORD(PMS.BRACal.Field.BRA_Curr_Total);
	
	
	PMS.BRACellV.Value[0]			:= SHL(REAL_TO_DWORD(PMS.BRACellV.Field.BRA_Cell_Max_Voltage), 16) OR UINT_TO_DWORD(PMS.BRACellV.Field.BRA_Rack_Num);
	PMS.BRACellV.Value[1] 			:= SHL(REAL_TO_DWORD(PMS.BRACellV.Field.BRA_Cell_AGV_Voltage), 16) OR REAL_TO_DWORD(PMS.BRACellV.Field.BRA_Cell_Min_Voltage);
	
	
	PMS.BRACellT.Value[0]			:= SHL(REAL_TO_DWORD(PMS.BRACellT.Field.BRA_Cell_Max_Temperature), 16) OR REAL_TO_DWORD(PMS.BRACellT.Field.BRA_Rack_Num);
	PMS.BRACellT.Value[1] 			:= SHL(REAL_TO_DWORD(PMS.BRACellT.Field.BRA_Cell_AGV_Temperature), 16) OR REAL_TO_DWORD(PMS.BRACellT.Field.BRA_Cell_Min_Temperature);
	
	
	PMS.BRACellDiv.Value[0]			:= SHL(REAL_TO_DWORD(PMS.BRACellDiv.Field.BRA_Cell_DIV_Voltage), 16) OR UINT_TO_DWORD(PMS.BRACellDiv.Field.BRA_Rack_Num);
	PMS.BRACellDiv.Value[1] 		:= REAL_TO_DWORD(PMS.BRACellDiv.Field.BRA_Cell_DIV_Temperature);
	
	
	PMS.BRA_VTPos.Value[0]			:= SHL(USINT_TO_DWORD(PMS.BRA_VTPos.Field.BRA_Min_Cell_V_Location), 24) OR SHL(USINT_TO_DWORD(PMS.BRA_VTPos.Field.BRA_Max_Cell_V_Location), 16) OR UINT_TO_DWORD(PMS.BRA_VTPos.Field.BRA_Rack_Num);
	PMS.BRA_VTPos.Value[1] 			:= SHL(USINT_TO_DWORD(PMS.BRA_VTPos.Field.BRA_Min_Cell_T_Location), 8) OR USINT_TO_DWORD(PMS.BRA_VTPos.Field.BRA_Max_Cell_V_Location);
	
	
	PMS.BAR_Alarm.Value[0]			:= UINT_TO_DWORD(PMS.BAR_Alarm.Field.BRA_Rack_Num);
	PMS.BAR_Alarm.Value[0].16		:=	PMS.BAR_Alarm.Field.BRA_Alarm_OC	;
	PMS.BAR_Alarm.Value[0].17		:=	PMS.BAR_Alarm.Field.BRA_Alarm_SOC_OV	;
	PMS.BAR_Alarm.Value[0].18		:=	PMS.BAR_Alarm.Field.BRA_Alarm_SOC_UN	;
	PMS.BAR_Alarm.Value[0].19		:=	PMS.BAR_Alarm.Field.BRA_Alarm_OV	;
	PMS.BAR_Alarm.Value[0].20		:=	PMS.BAR_Alarm.Field.BRA_Alarm_UV	;
	PMS.BAR_Alarm.Value[0].21		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Cell_OV	;
	PMS.BAR_Alarm.Value[0].22		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UV	;
	PMS.BAR_Alarm.Value[0].23		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UnBalaV	;
	PMS.BAR_Alarm.Value[0].24		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Discharger_Cell_OT	;
	PMS.BAR_Alarm.Value[0].25		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Charger_Cell_OT	;
	PMS.BAR_Alarm.Value[0].26		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Discharger_Cell_OT	;
	PMS.BAR_Alarm.Value[0].27		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Charger_Cell_UT	;
	PMS.BAR_Alarm.Value[0].28		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Cell_UnBalaT	;
	PMS.BAR_Alarm.Value[0].29		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Continuously_OP	;
	PMS.BAR_Alarm.Value[0].30		:=	PMS.BAR_Alarm.Field.BRA_Alarm_Peak_OP	;
	PMS.BAR_Alarm.Value[1].0		:=	PMS.BAR_Alarm.Field.BRA_Fault_OC	;
	PMS.BAR_Alarm.Value[1].1		:=	PMS.BAR_Alarm.Field.BRA_Fault_SOC_OV	;
	PMS.BAR_Alarm.Value[1].2		:=	PMS.BAR_Alarm.Field.BRA_Fault_SOC_UN	;
	PMS.BAR_Alarm.Value[1].3		:=	PMS.BAR_Alarm.Field.BRA_Fault_OV	;
	PMS.BAR_Alarm.Value[1].4		:=	PMS.BAR_Alarm.Field.BRA_Fault_UV	;
	PMS.BAR_Alarm.Value[1].5		:=	PMS.BAR_Alarm.Field.BRA_Fault_Cell_OV	;
	PMS.BAR_Alarm.Value[1].6		:=	PMS.BAR_Alarm.Field.BRA_Fault_Cell_UV	;
	PMS.BAR_Alarm.Value[1].7		:=	PMS.BAR_Alarm.Field.BRA_Fault_Cell_UnBalaV	;
	PMS.BAR_Alarm.Value[1].8		:=	PMS.BAR_Alarm.Field.BRA_Fault_Discharger_Cell_OT	;
	PMS.BAR_Alarm.Value[1].9		:=	PMS.BAR_Alarm.Field.BRA_Fault_Charger_Cell_OT	;
	PMS.BAR_Alarm.Value[1].10		:=	PMS.BAR_Alarm.Field.BRA_Fault_Discharger_Cell_OT	;
	PMS.BAR_Alarm.Value[1].11		:=	PMS.BAR_Alarm.Field.BRA_Fault_Charger_Cell_UT	;
	PMS.BAR_Alarm.Value[1].12		:=	PMS.BAR_Alarm.Field.BRA_Fault_Cell_UnBalaT	;
	PMS.BAR_Alarm.Value[1].13		:=	PMS.BAR_Alarm.Field.BRA_Fault_Continuously_OP	;
	PMS.BAR_Alarm.Value[1].14		:=	PMS.BAR_Alarm.Field.BRA_Fault_Peak_OP	;
	
	
	PMS.BAR_Protect.Value[0]		:= UINT_TO_DWORD(PMS.BAR_Protect.Field.BRA_Rack_Num);
	PMS.BAR_Protect.Value[0].16		:=	PMS.BAR_Protect.Field.BRA_Prtct_OC	;
	PMS.BAR_Protect.Value[0].17		:=	PMS.BAR_Protect.Field.BRA_Prtct_SOC_OV	;
	PMS.BAR_Protect.Value[0].18		:=	PMS.BAR_Protect.Field.BRA_Prtct_SOC_UN	;
	PMS.BAR_Protect.Value[0].19		:=	PMS.BAR_Protect.Field.BRA_Prtct_OV	;
	PMS.BAR_Protect.Value[0].20		:=	PMS.BAR_Protect.Field.BRA_Prtct_UV	;
	PMS.BAR_Protect.Value[0].21		:=	PMS.BAR_Protect.Field.BRA_Prtct_Cell_OV	;
	PMS.BAR_Protect.Value[0].22		:=	PMS.BAR_Protect.Field.BRA_Prtct_Cell_UV	;
	PMS.BAR_Protect.Value[0].23		:=	PMS.BAR_Protect.Field.BRA_Prtct_Cell_UnBalaV	;
	PMS.BAR_Protect.Value[0].24		:=	PMS.BAR_Protect.Field.BRA_Prtct_Discharger_Cell_OT	;
	PMS.BAR_Protect.Value[0].25		:=	PMS.BAR_Protect.Field.BRA_Prtct_Charger_Cell_OT	;
	PMS.BAR_Protect.Value[0].26		:=	PMS.BAR_Protect.Field.BRA_Prtct_Discharger_Cell_UT	;
	PMS.BAR_Protect.Value[0].27		:=	PMS.BAR_Protect.Field.BRA_Prtct_Charger_Cell_UT	;
	PMS.BAR_Protect.Value[0].28		:=	PMS.BAR_Protect.Field.BRA_Prtct_Cell_UnBalaT	;
	PMS.BAR_Protect.Value[0].29		:=	PMS.BAR_Protect.Field.BRA_Prtct_Continuously_OP	;
	PMS.BAR_Protect.Value[0].30		:=	PMS.BAR_Protect.Field.BRA_Prtct_Peak_OP	;
	PMS.BAR_Protect.Value[0].31		:=	PMS.BAR_Protect.Field.BRA_Prtct_InternalCOM	;
	PMS.BAR_Protect.Value[1].0		:=	PMS.BAR_Protect.Field.BRA_Prtct_ExternalCOM	;
	PMS.BAR_Protect.Value[1].1		:=	PMS.BAR_Protect.Field.BRA_Prtct_RelayWelding	;
	PMS.BAR_Protect.Value[1].2		:=	PMS.BAR_Protect.Field.BRA_Prtct_WaterLeak	;
	PMS.BAR_Protect.Value[1].3		:=	PMS.BAR_Protect.Field.BRA_Prtct_InsulationReg	;
	PMS.BAR_Protect.Value[1].4		:=	PMS.BAR_Protect.Field.BRA_Prtct_MDSFuse	;
	PMS.BAR_Protect.Value[1].5		:=	PMS.BAR_Protect.Field.BRA_Prtct_CoolingSystem	;
	
	
	PMS.BAR_DIO.Value[0]			:= UINT_TO_DWORD(PMS.BAR_DIO.Field.BRA_Rack_Num);
	PMS.BAR_DIO.Value[0].16			:=	PMS.BAR_DIO.Field.BRA_Prelay_DO_Status 	;
	PMS.BAR_DIO.Value[0].17			:=	PMS.BAR_DIO.Field.BRA_Nrelay_DO_Status	;
	PMS.BAR_DIO.Value[0].18			:=	PMS.BAR_DIO.Field.BRA_ProRelay_DO_Status	;
	PMS.BAR_DIO.Value[0].19			:=	PMS.BAR_DIO.Field.BRA_PowerLamp_DO_Status	;
	PMS.BAR_DIO.Value[0].20			:=	PMS.BAR_DIO.Field.BRA_Buzzer_DO_Status	;
	PMS.BAR_DIO.Value[1].0			:=	PMS.BAR_DIO.Field.BRA_PRelayAUX_DI_Status	;
	PMS.BAR_DIO.Value[1].1			:=	PMS.BAR_DIO.Field.BRA_NRelayAUX_DI_Status	;
	PMS.BAR_DIO.Value[1].2			:=	PMS.BAR_DIO.Field.BRA_EMGSwitch_DI_Status	;
	PMS.BAR_DIO.Value[1].3			:=	PMS.BAR_DIO.Field.BRA_MDS_DI_Status	;
	
	PMS.BAR_DIO.Value[1].16			:=	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD1	;
	PMS.BAR_DIO.Value[1].17			:=	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD2	;
	PMS.BAR_DIO.Value[1].18			:=	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD3	;
	PMS.BAR_DIO.Value[1].19			:=	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD4	;
	PMS.BAR_DIO.Value[1].20			:=	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD5	;
	PMS.BAR_DIO.Value[1].21			:=	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD6	;
	PMS.BAR_DIO.Value[1].22			:=	PMS.BAR_DIO.Field.BRA_Waterleak_Dete_MD7	;
	
END_ACTION