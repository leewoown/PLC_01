ACTION ActRACK1DATARxParshing: 
	// Dword >> USINT
	// SubBMS.Rack1.BSA.BSA_Product.Field.BSA_Type 		:=	DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[0], 0) AND 16#FF);
	// Dword >> UINT
	//SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Normal_Volt 	:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[0], 16) AND 16#FF);

	SubBMS.Rack1.BSA.BSA_Product.Field.BSA_Type 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[0], 0) AND 16#0F);
	SubBMS.Rack1.BSA.BSA_Product.Field.BSA_SW_Ver 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[0], 8) AND 16#0F);
	SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Normal_Volt 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Normal_Volt 		:=	SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Normal_Volt  * 0.1;
	SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Capacity 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Capacity			:=	SubBMS.Rack1.BSA.BSA_Product.Field.BRA_Capacity	* 0.1;
	SubBMS.Rack1.BSA.BSA_Product.Field.BSA_Serial 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[1], 16) AND 16#0F);
	SubBMS.Rack1.BSA.BSA_Product.Field.BSA_Parallel 		:=	DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.BSA_Product.Value[1], 24) AND 16#0F);
	
	SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Volt_Total 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Calc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Calc.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Volt_Total			:= SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Volt_Total *0.1;
	SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Curr_Total 		:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_Calc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_Calc.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Curr_Total			:= SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_Curr_Total *0.1;
	SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOC 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Calc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Calc.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOC				:= SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOC *0.1;
	SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOH 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Calc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Calc.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOH				:= SubBMS.Rack1.BSA.Rack_Calc.Field.BRA_SOH *0.1;
	
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_Divice_Status 	:=	DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.Rack_State.Value[0], 0) AND 16#0F);
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_Protect_Status 	:=	DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.Rack_State.Value[0], 8) AND 16#0F);
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_Balance 			:=	SubBMS.Rack1.BSA.Rack_State.Value[0].16;
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_Neg_Rly 			:=	SubBMS.Rack1.BSA.Rack_State.Value[0].17;
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_Pos_Rly 			:=	SubBMS.Rack1.BSA.Rack_State.Value[0].18;
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_PreChar_Rly 		:=	SubBMS.Rack1.BSA.Rack_State.Value[0].19;
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_MSD_AUX 			:=	SubBMS.Rack1.BSA.Rack_State.Value[0].20;
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_EMG_SW 			:=	SubBMS.Rack1.BSA.Rack_State.Value[0].21;
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_Water_leak 		:=	SubBMS.Rack1.BSA.Rack_State.Value[0].22;
	SubBMS.Rack1.BSA.Rack_State.Field.Not_Used1 			:=	SubBMS.Rack1.BSA.Rack_State.Value[0].23;
	SubBMS.Rack1.BSA.Rack_State.Field.Not_Used2 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.Rack_State.Value[0], 24) AND 16#0F);
	SubBMS.Rack1.BSA.Rack_State.Field.BSA_Ah 				:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_State.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_State.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_State.Field.Not_Used3 			:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_State.Value[1], 24) AND 16#FF), 8) OR DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_State.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC 			:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].0;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].1;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV 				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].2;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un  				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].3;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV  	 				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].4;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV  		 			:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].5;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV  				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].6;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV  				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].7;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV  			:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].8;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT 	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].9;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT	 	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].10;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].11;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].12;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT 			:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].13;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR 	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].14;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR 		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].15;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC 			:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].16;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC 				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].17;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV  				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].18;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un  				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].19;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV  					:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].20;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV  					:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].21;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV  				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].22;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV  				:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].23;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV 			:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].24;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT  	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].25;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT  		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].26;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT 	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].27;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT  		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].28;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT  			:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].29;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR  	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].30;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR  		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[0].31;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC   	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].0;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC   		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].1;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV   		  	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].2;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un   		  	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].3;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV   		  		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].4;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV   		  		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].5;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV   		  	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].6;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV   		  	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].7;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV   		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].8;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT := SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].9;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT 	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].10;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT := SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].11;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT   	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].12;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT   		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].13;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR := SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].14;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR   	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].15;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err   			:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].16;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err   		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].17;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err   		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].18;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err   		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].19;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err   	:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].20;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err  		:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].21;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.Not_Used1 					:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].22;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.Not_Used2 					:= SubBMS.Rack1.BSA.Rack_AlarmState.Value[1].23;
	SubBMS.Rack1.BSA.Rack_AlarmState.Field.protect.Not_Used3 					:= DWORD_TO_USINT(SHR(SubBMS.Rack1.BSA.Rack_AlarmState.Value[1], 24) AND 16#0F);
	
	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont 							:=	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont * 0.1;
	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont 						:=	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont * 0.1;
	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak 							:=	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak * 0.1;
	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak 						:=	SubBMS.Rack1.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak * 0.1;
	
	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV						:=	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV * 0.001;
	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV						:=	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV * 0.001;
	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV						:=	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV * 0.001;
	SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT						:=	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT * 0.1;
	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT						:=	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT * 0.1;
	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT						:=	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT * 0.1;
	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT						:=	SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT * 0.1;
	
	SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].0;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].1;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].2;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].3;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].4;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].5;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].6;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].7;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].8;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].9;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_1.Value[1].10;

	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack1.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul1_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].0;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].1;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].2;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].3;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].4;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].5;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].6;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].7;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].8;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].9;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_1.Value[1].10;

	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack1.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul2_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].0;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].1;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].2;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].3;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].4;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].5;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].6;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].7;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].8;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].9;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_1.Value[1].10;

	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack1.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul3_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].0;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].1;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].2;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].3;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].4;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].5;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].6;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].7;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].8;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].9;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_1.Value[1].10;

	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack1.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul4_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].0;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].1;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].2;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].3;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].4;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].5;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].6;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].7;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].8;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].9;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_1.Value[1].10;

	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack1.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul5_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].0;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].1;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].2;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].3;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].4;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].5;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].6;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].7;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].8;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].9;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_1.Value[1].10;

	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack1.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul6_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].0;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].1;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].2;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].3;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].4;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].5;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].6;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].7;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].8;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].9;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_1.Value[1].10;

	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack1.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack1.BSA.Modul7_Info.INFO_4.Value[1], 16) AND 16#FF);

END_ACTION
ACTION ActRACK2DATARxParshing: 
	// Dword >> USINT
	// SubBMS.Rack2.BSA.BSA_Product.Field.BSA_Type 		:=	DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[0], 0) AND 16#FF);
	// Dword >> UINT
	//SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Normal_Volt 	:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[0], 16) AND 16#FF);

	SubBMS.Rack2.BSA.BSA_Product.Field.BSA_Type 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[0], 0) AND 16#0F);
	SubBMS.Rack2.BSA.BSA_Product.Field.BSA_SW_Ver 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[0], 8) AND 16#0F);
	SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Normal_Volt 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Normal_Volt 		:=	SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Normal_Volt  * 0.1;
	SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Capacity 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Capacity			:=	SubBMS.Rack2.BSA.BSA_Product.Field.BRA_Capacity	* 0.1;
	SubBMS.Rack2.BSA.BSA_Product.Field.BSA_Serial 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[1], 16) AND 16#0F);
	SubBMS.Rack2.BSA.BSA_Product.Field.BSA_Parallel 		:=	DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.BSA_Product.Value[1], 24) AND 16#0F);
	
	SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Volt_Total 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Calc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Calc.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Volt_Total			:= SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Volt_Total *0.1;
	SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Curr_Total 		:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_Calc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_Calc.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Curr_Total			:= SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_Curr_Total *0.1;
	SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOC 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Calc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Calc.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOC				:= SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOC *0.1;
	SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOH 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Calc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Calc.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOH				:= SubBMS.Rack2.BSA.Rack_Calc.Field.BRA_SOH *0.1;
	
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_Divice_Status 	:=	DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.Rack_State.Value[0], 0) AND 16#0F);
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_Protect_Status 	:=	DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.Rack_State.Value[0], 8) AND 16#0F);
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_Balance 			:=	SubBMS.Rack2.BSA.Rack_State.Value[0].16;
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_Neg_Rly 			:=	SubBMS.Rack2.BSA.Rack_State.Value[0].17;
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_Pos_Rly 			:=	SubBMS.Rack2.BSA.Rack_State.Value[0].18;
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_PreChar_Rly 		:=	SubBMS.Rack2.BSA.Rack_State.Value[0].19;
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_MSD_AUX 			:=	SubBMS.Rack2.BSA.Rack_State.Value[0].20;
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_EMG_SW 			:=	SubBMS.Rack2.BSA.Rack_State.Value[0].21;
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_Water_leak 		:=	SubBMS.Rack2.BSA.Rack_State.Value[0].22;
	SubBMS.Rack2.BSA.Rack_State.Field.Not_Used1 			:=	SubBMS.Rack2.BSA.Rack_State.Value[0].23;
	SubBMS.Rack2.BSA.Rack_State.Field.Not_Used2 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.Rack_State.Value[0], 24) AND 16#0F);
	SubBMS.Rack2.BSA.Rack_State.Field.BSA_Ah 				:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_State.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_State.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_State.Field.Not_Used3 			:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_State.Value[1], 24) AND 16#FF), 8) OR DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_State.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC 			:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].0;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].1;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV 				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].2;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un  				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].3;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV  	 				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].4;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV  		 			:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].5;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV  				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].6;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV  				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].7;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV  			:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].8;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT 	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].9;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT	 	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].10;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].11;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].12;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT 			:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].13;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR 	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].14;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR 		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].15;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC 			:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].16;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC 				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].17;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV  				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].18;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un  				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].19;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV  					:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].20;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV  					:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].21;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV  				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].22;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV  				:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].23;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV 			:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].24;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT  	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].25;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT  		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].26;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT 	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].27;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT  		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].28;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT  			:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].29;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR  	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].30;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR  		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[0].31;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC   	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].0;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC   		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].1;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV   		  	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].2;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un   		  	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].3;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV   		  		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].4;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV   		  		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].5;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV   		  	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].6;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV   		  	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].7;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV   		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].8;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT := SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].9;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT 	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].10;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT := SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].11;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT   	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].12;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT   		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].13;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR := SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].14;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR   	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].15;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err   			:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].16;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err   		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].17;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err   		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].18;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err   		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].19;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err   	:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].20;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err  		:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].21;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.Not_Used1 					:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].22;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.Not_Used2 					:= SubBMS.Rack2.BSA.Rack_AlarmState.Value[1].23;
	SubBMS.Rack2.BSA.Rack_AlarmState.Field.protect.Not_Used3 					:= DWORD_TO_USINT(SHR(SubBMS.Rack2.BSA.Rack_AlarmState.Value[1], 24) AND 16#0F);
	
	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont 							:=	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont * 0.1;
	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont 						:=	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont * 0.1;
	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak 							:=	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak * 0.1;
	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak 						:=	SubBMS.Rack2.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak * 0.1;
	
	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV						:=	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV * 0.001;
	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV						:=	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV * 0.001;
	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV						:=	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV * 0.001;
	SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT						:=	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT * 0.1;
	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT						:=	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT * 0.1;
	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT						:=	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT * 0.1;
	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT						:=	SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT * 0.1;
	
	SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].0;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].1;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].2;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].3;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].4;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].5;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].6;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].7;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].8;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].9;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_1.Value[1].10;

	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack2.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul1_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].0;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].1;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].2;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].3;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].4;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].5;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].6;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].7;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].8;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].9;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_1.Value[1].10;

	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack2.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul2_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].0;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].1;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].2;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].3;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].4;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].5;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].6;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].7;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].8;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].9;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_1.Value[1].10;

	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack2.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul3_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].0;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].1;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].2;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].3;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].4;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].5;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].6;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].7;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].8;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].9;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_1.Value[1].10;

	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack2.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul4_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].0;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].1;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].2;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].3;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].4;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].5;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].6;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].7;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].8;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].9;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_1.Value[1].10;

	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack2.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul5_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].0;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].1;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].2;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].3;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].4;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].5;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].6;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].7;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].8;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].9;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_1.Value[1].10;

	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack2.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul6_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].0;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].1;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].2;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].3;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].4;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].5;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].6;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].7;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].8;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].9;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_1.Value[1].10;

	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack2.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack2.BSA.Modul7_Info.INFO_4.Value[1], 16) AND 16#FF);

END_ACTION
ACTION ActRACK3DATARxParshing: 
	// Dword >> USINT
	// SubBMS.Rack3.BSA.BSA_Product.Field.BSA_Type 		:=	DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[0], 0) AND 16#FF);
	// Dword >> UINT
	//SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Normal_Volt 	:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[0], 16) AND 16#FF);

	SubBMS.Rack3.BSA.BSA_Product.Field.BSA_Type 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[0], 0) AND 16#0F);
	SubBMS.Rack3.BSA.BSA_Product.Field.BSA_SW_Ver 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[0], 8) AND 16#0F);
	SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Normal_Volt 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Normal_Volt 		:=	SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Normal_Volt  * 0.1;
	SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Capacity 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Capacity			:=	SubBMS.Rack3.BSA.BSA_Product.Field.BRA_Capacity	* 0.1;
	SubBMS.Rack3.BSA.BSA_Product.Field.BSA_Serial 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[1], 16) AND 16#0F);
	SubBMS.Rack3.BSA.BSA_Product.Field.BSA_Parallel 		:=	DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.BSA_Product.Value[1], 24) AND 16#0F);
	
	SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Volt_Total 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Calc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Calc.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Volt_Total			:= SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Volt_Total *0.1;
	SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Curr_Total 		:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_Calc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_Calc.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Curr_Total			:= SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_Curr_Total *0.1;
	SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOC 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Calc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Calc.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOC				:= SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOC *0.1;
	SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOH 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Calc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Calc.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOH				:= SubBMS.Rack3.BSA.Rack_Calc.Field.BRA_SOH *0.1;
	
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_Divice_Status 	:=	DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.Rack_State.Value[0], 0) AND 16#0F);
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_Protect_Status 	:=	DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.Rack_State.Value[0], 8) AND 16#0F);
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_Balance 			:=	SubBMS.Rack3.BSA.Rack_State.Value[0].16;
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_Neg_Rly 			:=	SubBMS.Rack3.BSA.Rack_State.Value[0].17;
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_Pos_Rly 			:=	SubBMS.Rack3.BSA.Rack_State.Value[0].18;
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_PreChar_Rly 		:=	SubBMS.Rack3.BSA.Rack_State.Value[0].19;
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_MSD_AUX 			:=	SubBMS.Rack3.BSA.Rack_State.Value[0].20;
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_EMG_SW 			:=	SubBMS.Rack3.BSA.Rack_State.Value[0].21;
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_Water_leak 		:=	SubBMS.Rack3.BSA.Rack_State.Value[0].22;
	SubBMS.Rack3.BSA.Rack_State.Field.Not_Used1 			:=	SubBMS.Rack3.BSA.Rack_State.Value[0].23;
	SubBMS.Rack3.BSA.Rack_State.Field.Not_Used2 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.Rack_State.Value[0], 24) AND 16#0F);
	SubBMS.Rack3.BSA.Rack_State.Field.BSA_Ah 				:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_State.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_State.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_State.Field.Not_Used3 			:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_State.Value[1], 24) AND 16#FF), 8) OR DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_State.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC 			:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].0;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].1;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV 				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].2;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un  				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].3;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV  	 				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].4;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV  		 			:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].5;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV  				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].6;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV  				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].7;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV  			:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].8;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT 	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].9;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT	 	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].10;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].11;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].12;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT 			:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].13;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR 	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].14;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR 		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].15;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC 			:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].16;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC 				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].17;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV  				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].18;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un  				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].19;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV  					:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].20;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV  					:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].21;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV  				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].22;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV  				:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].23;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV 			:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].24;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT  	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].25;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT  		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].26;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT 	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].27;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT  		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].28;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT  			:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].29;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR  	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].30;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR  		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[0].31;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC   	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].0;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC   		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].1;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV   		  	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].2;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un   		  	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].3;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV   		  		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].4;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV   		  		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].5;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV   		  	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].6;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV   		  	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].7;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV   		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].8;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT := SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].9;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT 	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].10;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT := SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].11;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT   	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].12;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT   		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].13;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR := SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].14;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR   	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].15;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err   			:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].16;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err   		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].17;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err   		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].18;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err   		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].19;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err   	:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].20;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err  		:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].21;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.Not_Used1 					:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].22;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.Not_Used2 					:= SubBMS.Rack3.BSA.Rack_AlarmState.Value[1].23;
	SubBMS.Rack3.BSA.Rack_AlarmState.Field.protect.Not_Used3 					:= DWORD_TO_USINT(SHR(SubBMS.Rack3.BSA.Rack_AlarmState.Value[1], 24) AND 16#0F);
	
	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont 							:=	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont * 0.1;
	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont 						:=	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont * 0.1;
	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak 							:=	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak * 0.1;
	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak 						:=	SubBMS.Rack3.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak * 0.1;
	
	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV						:=	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV * 0.001;
	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV						:=	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV * 0.001;
	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV						:=	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV * 0.001;
	SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT						:=	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT * 0.1;
	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT						:=	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT * 0.1;
	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT						:=	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT * 0.1;
	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT						:=	SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT * 0.1;
	
	SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].0;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].1;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].2;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].3;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].4;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].5;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].6;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].7;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].8;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].9;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_1.Value[1].10;

	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack3.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul1_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].0;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].1;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].2;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].3;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].4;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].5;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].6;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].7;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].8;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].9;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_1.Value[1].10;

	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack3.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul2_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].0;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].1;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].2;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].3;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].4;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].5;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].6;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].7;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].8;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].9;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_1.Value[1].10;

	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack3.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul3_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].0;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].1;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].2;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].3;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].4;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].5;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].6;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].7;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].8;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].9;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_1.Value[1].10;

	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack3.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul4_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].0;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].1;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].2;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].3;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].4;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].5;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].6;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].7;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].8;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].9;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_1.Value[1].10;

	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack3.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul5_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].0;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].1;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].2;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].3;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].4;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].5;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].6;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].7;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].8;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].9;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_1.Value[1].10;

	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack3.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul6_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].0;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].1;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].2;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].3;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].4;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].5;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].6;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].7;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].8;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].9;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_1.Value[1].10;

	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack3.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack3.BSA.Modul7_Info.INFO_4.Value[1], 16) AND 16#FF);

END_ACTION
ACTION ActRACK4DATARxParshing: 
	// Dword >> USINT
	// SubBMS.Rack4.BSA.BSA_Product.Field.BSA_Type 		:=	DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[0], 0) AND 16#FF);
	// Dword >> UINT
	//SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Normal_Volt 	:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[0], 16) AND 16#FF);

	SubBMS.Rack4.BSA.BSA_Product.Field.BSA_Type 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[0], 0) AND 16#0F);
	SubBMS.Rack4.BSA.BSA_Product.Field.BSA_SW_Ver 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[0], 8) AND 16#0F);
	SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Normal_Volt 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Normal_Volt 		:=	SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Normal_Volt  * 0.1;
	SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Capacity 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Capacity			:=	SubBMS.Rack4.BSA.BSA_Product.Field.BRA_Capacity	* 0.1;
	SubBMS.Rack4.BSA.BSA_Product.Field.BSA_Serial 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[1], 16) AND 16#0F);
	SubBMS.Rack4.BSA.BSA_Product.Field.BSA_Parallel 		:=	DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.BSA_Product.Value[1], 24) AND 16#0F);
	
	SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Volt_Total 		:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Calc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Calc.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Volt_Total			:= SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Volt_Total *0.1;
	SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Curr_Total 		:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_Calc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_Calc.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Curr_Total			:= SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_Curr_Total *0.1;
	SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOC 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Calc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Calc.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOC				:= SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOC *0.1;
	SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOH 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Calc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Calc.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOH				:= SubBMS.Rack4.BSA.Rack_Calc.Field.BRA_SOH *0.1;
	
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_Divice_Status 	:=	DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.Rack_State.Value[0], 0) AND 16#0F);
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_Protect_Status 	:=	DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.Rack_State.Value[0], 8) AND 16#0F);
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_Balance 			:=	SubBMS.Rack4.BSA.Rack_State.Value[0].16;
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_Neg_Rly 			:=	SubBMS.Rack4.BSA.Rack_State.Value[0].17;
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_Pos_Rly 			:=	SubBMS.Rack4.BSA.Rack_State.Value[0].18;
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_PreChar_Rly 		:=	SubBMS.Rack4.BSA.Rack_State.Value[0].19;
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_MSD_AUX 			:=	SubBMS.Rack4.BSA.Rack_State.Value[0].20;
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_EMG_SW 			:=	SubBMS.Rack4.BSA.Rack_State.Value[0].21;
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_Water_leak 		:=	SubBMS.Rack4.BSA.Rack_State.Value[0].22;
	SubBMS.Rack4.BSA.Rack_State.Field.Not_Used1 			:=	SubBMS.Rack4.BSA.Rack_State.Value[0].23;
	SubBMS.Rack4.BSA.Rack_State.Field.Not_Used2 			:=	DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.Rack_State.Value[0], 24) AND 16#0F);
	SubBMS.Rack4.BSA.Rack_State.Field.BSA_Ah 				:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_State.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_State.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_State.Field.Not_Used3 			:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_State.Value[1], 24) AND 16#FF), 8) OR DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_State.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Dischager_OC 			:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].0;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Chager_OC				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].1;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_OV 				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].2;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_SOC_Un  				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].3;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_OV  	 				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].4;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_UV  		 			:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].5;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_OV  				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].6;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UV  				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].7;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalV  			:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].8;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_OT 	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].9;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_OT	 	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].10;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_DisCharger_Cell_UT	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].11;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_Cell_UT		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].12;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Cell_UnbalT 			:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].13;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Discharger_UnbaPWR 	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].14;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.warning.BSA_Wn_Charger_UnbaPWR 		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].15;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Dischager_OC 			:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].16;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Chager_OC 				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].17;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_OV  				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].18;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_SOC_Un  				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].19;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_OV  					:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].20;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_UV  					:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].21;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_OV  				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].22;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UV  				:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].23;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalV 			:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].24;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_OT  	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].25;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_OT  		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].26;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_DisCharger_Cell_UT 	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].27;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_Cell_UT  		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].28;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Cell_UnbalT  			:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].29;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Discharger_UnbaPWR  	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].30;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.fault.BSA_FLT_Charger_UnbaPWR  		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[0].31;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Dischager_OC   	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].0;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Chager_OC   		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].1;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_OV   		  	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].2;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_SOC_Un   		  	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].3;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_OV   		  		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].4;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_UV   		  		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].5;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_OV   		  	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].6;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UV   		  	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].7;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalV   		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].8;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_OT := SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].9;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_OT 	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].10;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_DisCharger_Cell_UT := SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].11;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_Cell_UT   	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].12;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Cell_UnbalT   		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].13;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Discharger_UnbaPWR := SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].14;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Charger_UnbaPWR   	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].15;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Rly_Err   			:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].16;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_IN_COM_Err   		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].17;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EX_COM_Err   		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].18;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_CT_COM_Err   		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].19;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_Water_Leak_Err   	:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].20;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.BSA_Prtct_EMS_SW_Err  		:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].21;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.Not_Used1 					:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].22;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.Not_Used2 					:= SubBMS.Rack4.BSA.Rack_AlarmState.Value[1].23;
	SubBMS.Rack4.BSA.Rack_AlarmState.Field.protect.Not_Used3 					:= DWORD_TO_USINT(SHR(SubBMS.Rack4.BSA.Rack_AlarmState.Value[1], 24) AND 16#0F);
	
	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont 							:=	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWCont * 0.1;
	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont 						:=	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWCont * 0.1;
	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak 							:=	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_CHAPWPeak * 0.1;
	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak 						:=	SubBMS.Rack4.BSA.Rack_PWRCalc.Field.BSA_DisCHAPWPeak * 0.1;
	
	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV						:=	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MaxV * 0.001;
	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV						:=	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_MinV * 0.001;
	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV						:=	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_AVGV * 0.001;
	SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Field.BSA_Cell_DeviV 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT						:=	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MaxT * 0.1;
	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT						:=	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_MinT * 0.1;
	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT 						:=	SHL(DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_INT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT						:=	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_AVGT * 0.1;
	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT 						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT						:=	SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Field.BSA_Cell_DeviT * 0.1;
	
	SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxV_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinV_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MaxT_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Field.BSA_Cell_MinT_Location 				:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value[1], 16) AND 16#FF);
	
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].0;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].1;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].2;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].3;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].4;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].5;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].6;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].7;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].8;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].9;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_1.Value[1].10;

	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack4.BSA.Modul1_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul1_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].0;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].1;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].2;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].3;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].4;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].5;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].6;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].7;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].8;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].9;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_1.Value[1].10;

	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack4.BSA.Modul2_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul2_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].0;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].1;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].2;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].3;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].4;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].5;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].6;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].7;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].8;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].9;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_1.Value[1].10;

	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack4.BSA.Modul3_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul3_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].0;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].1;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].2;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].3;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].4;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].5;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].6;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].7;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].8;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].9;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_1.Value[1].10;

	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack4.BSA.Modul4_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul4_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].0;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].1;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].2;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].3;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].4;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].5;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].6;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].7;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].8;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].9;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_1.Value[1].10;

	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack4.BSA.Modul5_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul5_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].0;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].1;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].2;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].3;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].4;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].5;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].6;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].7;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].8;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].9;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_1.Value[1].10;

	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack4.BSA.Modul6_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul6_Info.INFO_4.Value[1], 16) AND 16#FF);

	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_Total_Volt * 0.1;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_INITOK 							:=	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].0;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_Fault							:=	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].1;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_BalanEN 						:=	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].2;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_Waterleak_Err					:=	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].3;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_CellVolt_Err 					:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].4;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_CellTemp_Err  					:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].5;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_BATIC_Err  						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].6;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_CTCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].7;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_MBCOM_Err  						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].8;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_HMIErrFault  					:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].9;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Field.M_BalanceEnabel  					:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_1.Value[1].10;

	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellMaxVolt * 0.001;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellMinVolt * 0.001;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_2.Field.M_CellAvgVolt * 0.001;
	
	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Value[0], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Value[0], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellMaxTemp * 0.1;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Value[1], 8)  AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Value[1], 0)  AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellMinTemp * 0.1;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Value[1], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp						:= 	SubBMS.Rack4.BSA.Modul7_Info.INFO_3.Field.M_CellAvgTemp * 0.1;
	
	SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Field.M_Number 							:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Value[0], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Value[0], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Field.M_CellDivVolt						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Value[0], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Value[0], 16) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp 					:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Value[1], 8) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Value[1], 0) AND 16#FF);
	SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp						:=	SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Field.M_CellDivTemp * 0.1;
	SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Field.M_MDInResis						:=	SHL(DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Value[1], 24) AND 16#FF), 8) OR	DWORD_TO_UINT(SHR(SubBMS.Rack4.BSA.Modul7_Info.INFO_4.Value[1], 16) AND 16#FF);

END_ACTION