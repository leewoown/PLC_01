
ACTION ActTrendData: 
	HMI.TrendData.Voltage	:= UINT_TO_REAL(PMS.SysBatCal.Field.BSA_Volt_Total);
	HMI.TrendData.Current	:= UINT_TO_REAL(PMS.SysBatCal.Field.BSA_Curr_Total);
END_ACTION
