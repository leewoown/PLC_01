ACTION ActPMSDATARxParshing: 
	
	PMS.PMS.Field.PMS_WakeUp_CMD							:=	PMS.PMS.Value[0].0;
	PMS.PMS.Field.PMS_POWER_CMD								:=	PMS.PMS.Value[0].1;
	PMS.PMS.Field.PMS_FaultReset							:=	PMS.PMS.Value[0].8;
	PMS.PMS.Field.PMS_Po_RelayStatus						:=	PMS.PMS.Value[0].16;	
	PMS.PMS.Field.PMS_Pro_RelayStatus						:=	PMS.PMS.Value[0].17;	
	PMS.PMS.Field.PMS_Ne_RelayStatus						:=	PMS.PMS.Value[0].18;	
	
END_ACTION