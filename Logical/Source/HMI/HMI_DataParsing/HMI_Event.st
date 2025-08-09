ACTION ActLOGIN	:
	IF NOT(HMI.AdminLogin.Input_Button = '') THEN
		IF (HMI.AdminLogin.Input_Button = 'E') THEN
			IF NOT(LEN(HMI.AdminLogin.Password_Internal) = 0) THEN
				HMI.AdminLogin.Password_Internal 	:= LEFT(HMI.AdminLogin.Password_Internal,LEN(HMI.AdminLogin.Password_Internal)-1);
				HMI.AdminLogin.Password_External 	:= LEFT(HMI.AdminLogin.Password_External,LEN(HMI.AdminLogin.Password_External)-1);
			END_IF;
		ELSIF (HMI.AdminLogin.Input_Button = 'L') THEN
			IF HMI.AdminLogin.Password_Internal = PASSWORD THEN
				HMI.AdminLogin.Authority 		:= ADMIN;
				HMI.AdminLogin.Password_Internal:= '';
				HMI.AdminLogin.Password_External:= '';
			END_IF;
		ELSE
			HMI.AdminLogin.Password_Internal 	:= CONCAT(HMI.AdminLogin.Password_Internal,HMI.AdminLogin.Input_Button);
			HMI.AdminLogin.Password_External 	:= CONCAT(HMI.AdminLogin.Password_External,'*');
		END_IF;
		HMI.AdminLogin.Input_Button 		:= '';
	END_IF;
END_ACTION

ACTION ActDeviceReset:
	IF (HMI.AdminDeviceReset) THEN
		
		StateMa	:=  vkSYSTEM_RESET;
		Sys.ProtectSig := FALSE;
		Sys.AlarmSig := FALSE;
		Sys.FaultSig := FALSE;
		Sys.Buzzer 		:= FALSE;
		
		
		PMS.SysBatProtect.Field. BSA_Prtct_Cell_OV := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Cell_UV := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Cell_UnBalaV := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Discharger_Cell_OT := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Charger_Cell_OT := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Discharger_Cell_UT := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Charger_Cell_UT := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Cell_UnBalaT := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Continuously_OP := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Peak_OP := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_InternalCOM := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_ExternalCOM := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_RelayWelding := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_WaterLeak := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_InsulationReg := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_MDSFuse := 0;
		PMS.SysBatProtect.Field. BSA_Prtct_Cooling_System := 0;
		PMS.SysBatProtect.Field. PMS_PAR_RelayErr := 0;
		PMS.SysBatProtect.Field. PMS_PAR_SEQErr := 0;
		PMS.SysBatProtect.Field. BPU_PAR_RelayErr := 0;
		PMS.SysBatProtect.Field. BRA_PAR_RelayErr := 0;

		PMS.SysBatDIO.Field.BSA_EMGSwitch_DI_Status := FALSE;
		PMS.SysBatDIO.Field.BSA_CoolingSystem_DI_Status	:= FALSE;
		
		HMI.AdminDeviceReset := FALSE;
		
		FOR i:=0 TO 27 DO
	  		HMI_Alarm.Protect[i].Internal_Count := 0;

		END_FOR;
	END_IF;
END_ACTION
