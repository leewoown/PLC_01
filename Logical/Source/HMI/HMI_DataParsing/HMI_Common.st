
ACTION ActTrendData: 
	HMI.TrendData.Voltage	:= UINT_TO_REAL(PMS.SysBatCal.Field.BSA_Volt_Total);
	HMI.TrendData.Current	:= UINT_TO_REAL(PMS.SysBatCal.Field.BSA_Curr_Total);
END_ACTION

ACTION ActDIOState: 
	IF Sys.EMSRlyAux THEN
		HMI.DIOStatus.BSA_Exteral_EMS	:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_Exteral_EMS	:= 'Solid_Green';
	END_IF;
	
	IF Sys.EMSRlyAux_BMP  THEN
		HMI.DIOStatus.BSA_BMP_EMS		:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_BMP_EMS		:= 'Solid_Green';			
	END_IF;
	IF Sys.WaterCoolingAux  THEN
		HMI.DIOStatus.BSA_Watercooling	:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_Watercooling	:= 'Solid_Green';
	END_IF;
	IF Sys.FireDetectorAux  THEN
		HMI.DIOStatus.BSA_FireDetector		:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_FireDetector		:= 'Solid_Green';
	END_IF;
	IF Sys.GasDetectorAux  THEN
		HMI.DIOStatus.BSA_GasDetector	:= 'Solid_Red';
	ELSE
		HMI.DIOStatus.BSA_GasDetector	:= 'Solid_Green';
	END_IF;
	IF Sys.NRlyAux  THEN
		HMI.DIOStatus.BSA_Neg_Rly	:= 'Solid_Green';
	ELSE
		HMI.DIOStatus.BSA_Neg_Rly	:= 'Solid_Red';
	END_IF;
	IF Sys.PRlyAux  THEN
		HMI.DIOStatus.BSA_Pos_Rly	:= 'Solid_Green';
	ELSE
		HMI.DIOStatus.BSA_Pos_Rly	:= 'Solid_Red';
	END_IF;
	IF Sys.ProRlyAux  THEN
		HMI.DIOStatus.BSA_PreChar_Rly	:= 'Solid_Green';
	ELSE
		HMI.DIOStatus.BSA_PreChar_Rly	:= 'Solid_Red';
	END_IF;
END_ACTION