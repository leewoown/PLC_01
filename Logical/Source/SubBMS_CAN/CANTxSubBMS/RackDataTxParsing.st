ACTION ActRACK1DATATxParshing: 
	SubBMS.Rack1.BMA.Value[0].0	:=	SubBMS.Rack1.BMA.Field.BSA_WakeUP;
	SubBMS.Rack1.BMA.Value[0].1	:=	SubBMS.Rack1.BMA.Field.BSA_Mode;
	SubBMS.Rack1.BMA.Value[0].8	:=	SubBMS.Rack1.BMA.Field.BSA_Reset;
	
	SubBMS.Rack1.BMA.Value[1]	:=	SHL(UINT_TO_DWORD(SubBMS.Rack1.BMA.Field.BSA_Cell_AGV), 16) OR	INT_TO_DWORD(SubBMS.Rack1.BMA.Field.BSA_Cell_MinV);
	
END_ACTION
ACTION ActRACK2DATATxParshing: 
	SubBMS.Rack2.BMA.Value[0].0	:=	SubBMS.Rack2.BMA.Field.BSA_WakeUP;
	SubBMS.Rack2.BMA.Value[0].1	:=	SubBMS.Rack2.BMA.Field.BSA_Mode;
	SubBMS.Rack2.BMA.Value[0].8	:=	SubBMS.Rack2.BMA.Field.BSA_Reset;
	
	SubBMS.Rack2.BMA.Value[1]	:=	SHL(UINT_TO_DWORD(SubBMS.Rack2.BMA.Field.BSA_Cell_AGV), 16) OR	INT_TO_DWORD(SubBMS.Rack2.BMA.Field.BSA_Cell_MinV);
	
END_ACTION
ACTION ActRACK3DATATxParshing: 
	SubBMS.Rack3.BMA.Value[0].0	:=	SubBMS.Rack3.BMA.Field.BSA_WakeUP;
	SubBMS.Rack3.BMA.Value[0].1	:=	SubBMS.Rack3.BMA.Field.BSA_Mode;
	SubBMS.Rack3.BMA.Value[0].8	:=	SubBMS.Rack3.BMA.Field.BSA_Reset;
	
	SubBMS.Rack3.BMA.Value[1]	:=	SHL(UINT_TO_DWORD(SubBMS.Rack3.BMA.Field.BSA_Cell_AGV), 16) OR	INT_TO_DWORD(SubBMS.Rack3.BMA.Field.BSA_Cell_MinV);
	
END_ACTION
ACTION ActRACK4DATATxParshing: 
	SubBMS.Rack4.BMA.Value[0].0	:=	SubBMS.Rack4.BMA.Field.BSA_WakeUP;
	SubBMS.Rack4.BMA.Value[0].1	:=	SubBMS.Rack4.BMA.Field.BSA_Mode;
	SubBMS.Rack4.BMA.Value[0].8	:=	SubBMS.Rack4.BMA.Field.BSA_Reset;
	
	SubBMS.Rack4.BMA.Value[1]	:=	SHL(UINT_TO_DWORD(SubBMS.Rack4.BMA.Field.BSA_Cell_AGV), 16) OR	INT_TO_DWORD(SubBMS.Rack4.BMA.Field.BSA_Cell_MinV);
	
END_ACTION