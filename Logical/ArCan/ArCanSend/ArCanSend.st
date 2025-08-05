
PROGRAM _INIT
	
	ArCanSender.enable				:= TRUE;
	
	(* CAN parameter configuration *)
	ArCanSender.senderDeviceName 	:= 'IF7';       (* for X20CP0482 CPU *)
//	ArCanSender.senderDeviceName 	:= 'IF1.ST2.IF1.ST2.IF1';		(* for C50 Touch Panel + X20CS2770 *)
	ArCanSender.Baudrate			:= 500000;		(* Set to 500 000 bit/s *)		
	
	ArCanSender.Format				:= arCAN_11BIT; // or arCAN_29BIT

	(**********	 CAN Baud rate Baudrate Value	************)
	(*******************************************************)
	(* 	  1 000 000 bit/s    >>		Baudrate = 1000000	   *)
	(* 		800 000 bit/s    >>		Baudrate =  800000	   *)
	(* 		500 000 bit/s    >>		Baudrate =  500000	   *)
	(* 		250 000 bit/s    >>		Baudrate =  250000	   *)
	(* 		125 000 bit/s    >>		Baudrate =  125000	   *)
	(* 		100 000 bit/s    >>		Baudrate =  100000	   *)
	(* 		050 000 bit/s    >>		Baudrate =  50000	   *)
	(* 		020 000 bit/s    >>		Baudrate =  20000	   *)
	(* 		010 000 bit/s    >>		Baudrate =  10000	   *)
	(*******************************************************)
	(*******************************************************)
	
END_PROGRAM
	

PROGRAM _CYCLIC	
    
	timerCount				:= timerCount + 1;
	IF timerCount >= 2 THEN     // ( cycle time x 5 ) = time for step change (2ms x 5 = 10ms)
		timerCount	:= 0;
		//step				:= step + 1;
		IF step > 9 THEN        // after the last step 9, go back to 0 step
			step	:= 0;
		END_IF
		IF ArCanSender.step = STEP_WAIT_CMD THEN
			ArCanSender.step	:= STEP_INIT_SEND_FRAME;
		END_IF
	END_IF
	
	
	(***********************************************************)
	(* Customize the sending data *)

	CASE step OF
		0:
			ArCanSender.ID							:= 16#500;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= USINT_TO_BYTE(PMS.BSA_Serial) ;		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= USINT_TO_BYTE(PMS.BSA_Parallel);	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BSA_Normal_Volt AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BSA_Normal_Volt, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= UINT_TO_BYTE(PMS.BSA_Capacity AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= UINT_TO_BYTE(SHR(PMS.BSA_Capacity, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UINT_TO_BYTE(PMS.BSA_Divice_Status AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= UINT_TO_BYTE(SHR(PMS.BSA_Divice_Status, 8));

			

		1: 	
			ArCanSender.ID							:= 16#501;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BSA_Volt_Total AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BSA_Volt_Total, 8));
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BSA_Curr_Total AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BSA_Curr_Total, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= UINT_TO_BYTE(PMS.BSA_SOC AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= UINT_TO_BYTE(SHR(PMS.BSA_SOC, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UINT_TO_BYTE(PMS.BSA_SOH AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= UINT_TO_BYTE(SHR(PMS.BSA_SOH, 8));
			
		2: 	
			ArCanSender.ID							:= 16#502;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BSA_CONT_Charge_Power_Limit AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BSA_CONT_Charge_Power_Limit, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BSA_Peak_Charge_Power_Limit AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BSA_Peak_Charge_Power_Limit, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= UINT_TO_BYTE(PMS.BSA_CONTy_Discharge_Power_Limit AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= UINT_TO_BYTE(SHR(PMS.BSA_CONTy_Discharge_Power_Limit, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UINT_TO_BYTE(PMS.BSA_Peak_Discharge_Power_Limit AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= UINT_TO_BYTE(SHR(PMS.BSA_Peak_Discharge_Power_Limit, 8));
			
		3: 	
			ArCanSender.ID							:= 16#503;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BSA_Cell_MaxV AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BSA_Cell_MaxV, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BSA_Cell_MinV AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BSA_Cell_MinV, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= UINT_TO_BYTE(PMS.BSA_Cell_AVGV AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= UINT_TO_BYTE(SHR(PMS.BSA_Cell_AVGV, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UINT_TO_BYTE(PMS.BSA_Cell_DeviV AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= UINT_TO_BYTE(SHR(PMS.BSA_Cell_DeviV, 8));
			
		4: 	
			ArCanSender.ID							:= 16#504;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BSA_Cell_MaxT AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BSA_Cell_MaxT, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BSA_Cell_MinT AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BSA_Cell_MinT, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= UINT_TO_BYTE(PMS.BSA_Cell_AVGT AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= UINT_TO_BYTE(SHR(PMS.BSA_Cell_AVGT, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UINT_TO_BYTE(PMS.BSA_Cell_DeviT AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= UINT_TO_BYTE(SHR(PMS.BSA_Cell_DeviT, 8));
			
		5: 	
			ArCanSender.ID							:= 16#505;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= USINT_TO_BYTE(PMS.BSA_Rack_MaxV_Location) ;		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= USINT_TO_BYTE(PMS.BSA_Cell_MaxV_Location);	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= USINT_TO_BYTE(PMS.BSA_Rack_MinV_Location) ;		
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= USINT_TO_BYTE(PMS.BSA_Cell_MinV_Location);	
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= USINT_TO_BYTE(PMS.BSA_Rack_MaxT_Location) ;		
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= USINT_TO_BYTE(PMS.BSA_Cell_MaxT_Location);	
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= USINT_TO_BYTE(PMS.BSA_Rack_MinT_Location) ;		
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= USINT_TO_BYTE(PMS.BSA_Cell_MinT_Location);	
			
		6: 	
			ArCanSender.ID							:= 16#506;
			ArCanSender.ArCanSend_0.Frame.Data[0].0	:= (PMS.BSA_Alarm_OC) ;		
			ArCanSender.ArCanSend_0.Frame.Data[0].1	:= (PMS.BSA_Alarm_SOC_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].2	:= (PMS.BSA_Alarm_SOC_UN) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].3	:= (PMS.BSA_Alarm_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].4	:= (PMS.BSA_Alarm_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].5	:= (PMS.BSA_Alarm_Cell_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].6	:= (PMS.BSA_Alarm_Cell_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].7	:= (PMS.BSA_Alarm_Cell_UnBalaV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].0	:= (PMS.BSA_Alarm_Discharger_Cell_OT) ;		
			ArCanSender.ArCanSend_0.Frame.Data[1].1	:= (PMS.BSA_Alarm_Charger_Cell_OT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].2	:= (PMS.BSA_Alarm_Charger_Cell_UT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].3	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].4	:= (PMS.BSA_Alarm_Cell_UnBalaT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].5	:= (PMS.BSA_Alarm_Continuously_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].6	:= (PMS.BSA_Alarm_Peak_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].7	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].0	:= (PMS.BSA_Fault_OC) ;		
			ArCanSender.ArCanSend_0.Frame.Data[2].1	:= (PMS.BSA_Fault_SOC_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].2	:= (PMS.BSA_Fault_SOC_UN) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].3	:= (PMS.BSA_Fault_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].4	:= (PMS.BSA_Fault_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].5	:= (PMS.BSA_Fault_Cell_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].6	:= (PMS.BSA_Fault_Cell_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].7	:= (PMS.BSA_Fault_Cell_UnBalaV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].0	:= (PMS.BSA_Fault_Discharger_Cell_OT) ;		
			ArCanSender.ArCanSend_0.Frame.Data[3].1	:= (PMS.BSA_Fault_Charger_Cell_OT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].2	:= (PMS.BSA_Fault_Charger_Cell_UT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].3	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[3].4	:= (PMS.BSA_Fault_Cell_UnBalaT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].5	:= (PMS.BSA_Fault_Continuously_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].6	:= (PMS.BSA_Fault_Peak_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].7	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].0	:= (PMS.BSA_Prtct_OC) ;		
			ArCanSender.ArCanSend_0.Frame.Data[4].1	:= (PMS.BSA_Prtct_SOC_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].2	:= (PMS.BSA_Prtct_SOC_UN) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].3	:= (PMS.BSA_Prtct_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].4	:= (PMS.BSA_Prtct_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].5	:= (PMS.BSA_Prtct_Cell_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].6	:= (PMS.BSA_Prtct_Cell_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].7	:= (PMS.BSA_Prtct_Cell_UnBalaV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].0	:= (PMS.BSA_Prtct_Discharger_Cell_OT) ;		
			ArCanSender.ArCanSend_0.Frame.Data[5].1	:= (PMS.BSA_Prtct_Charger_Cell_OT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].2	:= (PMS.BSA_Prtct_Charger_Cell_UT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].3	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[5].4	:= (PMS.BSA_Prtct_Cell_UnBalaT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].5	:= (PMS.BSA_Prtct_Continuously_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].6	:= (PMS.BSA_Prtct_Peak_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].7	:= (PMS.BSA_Prtct_InternalCOM) ;
			ArCanSender.ArCanSend_0.Frame.Data[6].0	:= (PMS.BSA_Prtct_ExternalCOM) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].1	:= (PMS.BSA_Prtct_RelayWelding) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].2	:= (PMS.BSA_Prtct_WaterLeak) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].3	:= (PMS.BSA_Prtct_InsulationReg) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].4	:= (PMS.BSA_Prtct_MDSFuse) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].5	:= (PMS.BSA_Prtct_CoolingSystem) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].6	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[6].7	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0;	
			
		7: 	
			ArCanSender.ID							:= 16#507;
			ArCanSender.ArCanSend_0.Frame.Data[0].0	:= (PMS.BSA_Prelay_DO_Status) ;		
			ArCanSender.ArCanSend_0.Frame.Data[0].1	:= (PMS.BSA_Nrelay_DO_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].2	:= (PMS.BSA_ProRelay_DO_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].3	:= (PMS.BSA_Buzzer_DO_Status) ;
			ArCanSender.ArCanSend_0.Frame.Data[0].4	:= (PMS.BSA_PowerLamp_DO_Status) ;
			ArCanSender.ArCanSend_0.Frame.Data[0].5	:= (PMS.BSA_DO_Spare06) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].6	:= (PMS.BSA_DO_Spare07) ;	
			ArCanSender.ArCanSend_0.Frame.Data[0].7	:= (PMS.BSA_DO_Spare08) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].0	:= (PMS.BSA_DO_Spare09) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].1	:= (PMS.BSA_DO_Spare10) ;		
			ArCanSender.ArCanSend_0.Frame.Data[1].2	:= (PMS.BSA_DO_Spare11) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].3	:= (PMS.BSA_DO_Spare12) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].4	:= (PMS.BSA_PRelayAUX_DI_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].5	:= (PMS.BSA_NRelayAUX_DI_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].6	:= (PMS.BSA_EMGSwitch_DI_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[1].7	:= (PMS.BSA_CoolingSystem_DI_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].0	:= (PMS.BSA_MDS_DI_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].1	:= (PMS.BSA_DI_Spare06) ;		
			ArCanSender.ArCanSend_0.Frame.Data[2].2	:= (PMS.BSA_DI_Spare07) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].3	:= (PMS.BSA_DI_Spare08) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].4	:= (PMS.BSA_DI_Spare09) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].5	:= (PMS.BSA_DI_Spare10) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].6	:= (PMS.BSA_DI_Spare11) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].7	:= (PMS.BSA_DI_Spare12) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= 0;
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0;	
			
		8: 	
			ArCanSender.ID							:= 16#508;
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= 0;
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= 0;
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0;
			
		9: 	
			ArCanSender.ID							:= 16#509;
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_A AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_A, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BRA_Volt_Total AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BRA_Volt_Total, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= INT_TO_BYTE(PMS.BRA_Curr_Total AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= INT_TO_BYTE(SHR(PMS.BRA_Curr_Total, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UINT_TO_BYTE(PMS.BRA_SOC AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= UINT_TO_BYTE(SHR(PMS.BRA_SOC, 8));
		10: 	
			ArCanSender.ID							:= 16#50A;
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_B AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_B, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BRA_SOH AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BRA_SOH, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= INT_TO_BYTE(PMS.BRA_CONT_Charge_PowerLimit AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= INT_TO_BYTE(SHR(PMS.BRA_CONT_Charge_PowerLimit, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= UINT_TO_BYTE(PMS.BRA_Peak_Charge_PowerLimit AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= UINT_TO_BYTE(SHR(PMS.BRA_Peak_Charge_PowerLimit, 8));
		11: 	
			ArCanSender.ID							:= 16#50B;
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_C AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_C, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BRA_CONT_Discharge_Power_Limit AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BRA_CONT_Discharge_Power_Limit, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= INT_TO_BYTE(PMS.BRA_Peak_Discharge_Power_Limit AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= INT_TO_BYTE(SHR(PMS.BRA_Peak_Discharge_Power_Limit, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= 0;
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0;
		12: 	
			ArCanSender.ID							:= 16#50C;
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_D AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_D, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BRA_Cell_Max_Voltage AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BRA_Cell_Max_Voltage, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= INT_TO_BYTE(PMS.BRA_Cell_Min_Voltage AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= INT_TO_BYTE(SHR(PMS.BRA_Cell_Min_Voltage, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= INT_TO_BYTE(PMS.BRA_Cell_AGV_Voltage AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= INT_TO_BYTE(SHR(PMS.BRA_Cell_AGV_Voltage, 8));
		13: 	
			ArCanSender.ID							:= 16#50D;
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_E AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_E, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BRA_Cell_Max_Temperature AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BRA_Cell_Max_Temperature, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= INT_TO_BYTE(PMS.BRA_Cell_Min_Temperature AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= INT_TO_BYTE(SHR(PMS.BRA_Cell_Min_Temperature, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= INT_TO_BYTE(PMS.BRA_Cell_AGV_Temperature AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= INT_TO_BYTE(SHR(PMS.BRA_Cell_AGV_Temperature, 8));
		14: 	
			ArCanSender.ID							:= 16#50E;
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_F AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_F, 8));	
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= UINT_TO_BYTE(PMS.BRA_Cell_DIV_Voltage AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= UINT_TO_BYTE(SHR(PMS.BRA_Cell_DIV_Voltage, 8));
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= INT_TO_BYTE(PMS.BRA_Cell_DIV_Temperature AND 16#FF );
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= INT_TO_BYTE(SHR(PMS.BRA_Cell_DIV_Temperature, 8));
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= 0;
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0;
			
		15: 	
			ArCanSender.ID							:= 16#50F;
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_G AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_G, 8));				
			ArCanSender.ArCanSend_0.Frame.Data[2]	:= USINT_TO_BYTE(PMS.BRA_Max_Cell_V_Location) ;		
			ArCanSender.ArCanSend_0.Frame.Data[3]	:= USINT_TO_BYTE(PMS.BRA_Min_Cell_V_Location);	
			ArCanSender.ArCanSend_0.Frame.Data[4]	:= USINT_TO_BYTE(PMS.BRA_Max_Cell_T_Location) ;		
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= USINT_TO_BYTE(PMS.BRA_Min_Cell_T_Location);	
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= 0 ;		
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0 ;	
		
		16: 	
			ArCanSender.ID							:= 16#510;
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_H AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_H, 8));
			ArCanSender.ArCanSend_0.Frame.Data[2].0	:= (PMS.BSA_Alarm_OC) ;		
			ArCanSender.ArCanSend_0.Frame.Data[2].1	:= (PMS.BSA_Alarm_SOC_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].2	:= (PMS.BSA_Alarm_SOC_UN) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].3	:= (PMS.BSA_Alarm_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].4	:= (PMS.BSA_Alarm_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].5	:= (PMS.BSA_Alarm_Cell_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].6	:= (PMS.BSA_Alarm_Cell_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].7	:= (PMS.BSA_Alarm_Cell_UnBalaV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].0	:= (PMS.BSA_Alarm_Discharger_Cell_OT) ;		
			ArCanSender.ArCanSend_0.Frame.Data[3].1	:= (PMS.BSA_Alarm_Charger_Cell_OT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].2	:= (PMS.BSA_Alarm_Charger_Cell_UT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].3	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].4	:= (PMS.BSA_Alarm_Cell_UnBalaT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].5	:= (PMS.BSA_Alarm_Continuously_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].6	:= (PMS.BSA_Alarm_Peak_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].7	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].0	:= (PMS.BSA_Fault_OC) ;		
			ArCanSender.ArCanSend_0.Frame.Data[4].1	:= (PMS.BSA_Fault_SOC_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].2	:= (PMS.BSA_Fault_SOC_UN) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].3	:= (PMS.BSA_Fault_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].4	:= (PMS.BSA_Fault_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].5	:= (PMS.BSA_Fault_Cell_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].6	:= (PMS.BSA_Fault_Cell_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].7	:= (PMS.BSA_Fault_Cell_UnBalaV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].0	:= (PMS.BSA_Fault_Discharger_Cell_OT) ;		
			ArCanSender.ArCanSend_0.Frame.Data[5].1	:= (PMS.BSA_Fault_Charger_Cell_OT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].2	:= (PMS.BSA_Fault_Charger_Cell_UT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].3	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[5].4	:= (PMS.BSA_Fault_Cell_UnBalaT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].5	:= (PMS.BSA_Fault_Continuously_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].6	:= (PMS.BSA_Fault_Peak_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].7	:= 0 ;
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= 0 ;
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0 ;
			
		
		17: 	
			ArCanSender.ID							:= 16#511;
			
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_I AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_I, 8));
			ArCanSender.ArCanSend_0.Frame.Data[2].0	:= (PMS.BSA_Prtct_OC) ;		
			ArCanSender.ArCanSend_0.Frame.Data[2].1	:= (PMS.BSA_Prtct_SOC_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].2	:= (PMS.BSA_Prtct_SOC_UN) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].3	:= (PMS.BSA_Prtct_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].4	:= (PMS.BSA_Prtct_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].5	:= (PMS.BSA_Prtct_Cell_OV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].6	:= (PMS.BSA_Prtct_Cell_UV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].7	:= (PMS.BSA_Prtct_Cell_UnBalaV) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].0	:= (PMS.BSA_Prtct_Discharger_Cell_OT) ;		
			ArCanSender.ArCanSend_0.Frame.Data[3].1	:= (PMS.BSA_Prtct_Charger_Cell_OT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].2	:= (PMS.BSA_Prtct_Charger_Cell_UT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].3	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[3].4	:= (PMS.BSA_Prtct_Cell_UnBalaT) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].5	:= (PMS.BSA_Prtct_Continuously_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].6	:= (PMS.BSA_Prtct_Peak_OP) ;	
			ArCanSender.ArCanSend_0.Frame.Data[3].7	:= (PMS.BSA_Prtct_InternalCOM) ;
			ArCanSender.ArCanSend_0.Frame.Data[4].0	:= (PMS.BSA_Prtct_ExternalCOM) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].1	:= (PMS.BSA_Prtct_RelayWelding) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].2	:= (PMS.BSA_Prtct_WaterLeak) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].3	:= (PMS.BSA_Prtct_InsulationReg) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].4	:= (PMS.BSA_Prtct_MDSFuse) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].5	:= (PMS.BSA_Prtct_CoolingSystem) ;	
			ArCanSender.ArCanSend_0.Frame.Data[4].6	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[4].7	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[5]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[6]	:= 0;	
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0;	
		
		18: 	
			ArCanSender.ID							:= 16#512;
			
			
			ArCanSender.ArCanSend_0.Frame.Data[0]	:= UINT_TO_BYTE(PMS.BRA_Rack_Num_J AND 16#FF );		
			ArCanSender.ArCanSend_0.Frame.Data[1]	:= UINT_TO_BYTE(SHR(PMS.BRA_Rack_Num_J, 8));
			ArCanSender.ArCanSend_0.Frame.Data[2].0	:= (PMS.BRA_Prelay_DO_Status) ;		
			ArCanSender.ArCanSend_0.Frame.Data[2].1	:= (PMS.BRA_Nrelay_DO_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].2	:= (PMS.BRA_ProRelay_DO_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].3	:= (PMS.BRA_PowerLamp_DO_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].4	:= (PMS.BRA_Buzzer_DO_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].5	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].6	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[2].7	:= 0 ;
			ArCanSender.ArCanSend_0.Frame.Data[5].0	:= (PMS.BRA_PRelayAUX_DI_Status) ;
			ArCanSender.ArCanSend_0.Frame.Data[5].1	:= (PMS.BRA_NRelayAUX_DI_Status) ;		
			ArCanSender.ArCanSend_0.Frame.Data[5].2	:= (PMS.BRA_EMGSwitch_DI_Status) ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].3	:= (PMS.BRA_MDS_DI_Status) ;
			ArCanSender.ArCanSend_0.Frame.Data[5].4	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].5	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[5].6	:= 0 ;
			ArCanSender.ArCanSend_0.Frame.Data[5].7	:= 0 ;
			
			ArCanSender.ArCanSend_0.Frame.Data[6].0	:= (PMS.BRA_Waterleak_Dete_MD1) ;
			ArCanSender.ArCanSend_0.Frame.Data[6].1	:= (PMS.BRA_Waterleak_Dete_MD2) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].2	:= (PMS.BRA_Waterleak_Dete_MD3) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].3	:= (PMS.BRA_Waterleak_Dete_MD4) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].4	:= (PMS.BRA_Waterleak_Dete_MD5) ;
			ArCanSender.ArCanSend_0.Frame.Data[6].5	:= (PMS.BRA_Waterleak_Dete_MD6) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].6	:= (PMS.BRA_Waterleak_Dete_MD7) ;	
			ArCanSender.ArCanSend_0.Frame.Data[6].7	:= 0 ;	
			ArCanSender.ArCanSend_0.Frame.Data[7]	:= 0;	
	END_CASE
	
	(***********************************************************)
	
				
	IF (ArCanSender.successCount <> successCountOld) THEN
		successCountOld						:= ArCanSender.successCount;
		ArCanSender.ArCanSend_0.SendFrame	:= FALSE;
		ArCanSender.step					:= STEP_WAIT_CMD;
	END_IF
	
	
	(* Action for Sender *)
	ActionArCanSender;
	

	
END_PROGRAM


PROGRAM _EXIT
	(* Deinitialization of the sender *)
	ArCanSender.ArCanSend_0.Enable := FALSE;
	ArCanSender.ArCanSend_0();
END_PROGRAM
