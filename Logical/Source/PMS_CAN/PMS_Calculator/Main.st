
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	SubBMS_Calculator.BSA[0] := SubBMS.Rack1.BSA;
	SubBMS_Calculator.BSA[1] := SubBMS.Rack2.BSA;
	SubBMS_Calculator.BSA[2] := SubBMS.Rack3.BSA;
	SubBMS_Calculator.BSA[3] := SubBMS.Rack4.BSA;
	
	SubBMS.Rack1.BMA.Field := SubBMS_Calculator.BMA[0].Field;
	SubBMS.Rack2.BMA.Field := SubBMS_Calculator.BMA[1].Field;
	SubBMS.Rack3.BMA.Field := SubBMS_Calculator.BMA[2].Field;
	SubBMS.Rack4.BMA.Field := SubBMS_Calculator.BMA[3].Field;
	
	PMS_SysBatCal;
	PMS_SysBatPWR;
	PMS_SysCell_Volt_Location;
	PMS_SysCell_Temps_Location;
	PMS_SysBatProtect;
	PMS_SysBatDIO;
	PMS_BRACal;
	PMS_BRAPWR_A;
	PMS_BRAPWR_B;
	PMS_BRACellV;
	PMS_BRACellT;
	PMS_BRACellDiv;
	PMS_BRA_VTPos;
	PMS_BAR_Alarm;
	PMS_BAR_Protect;
	PMS_BAR_DIO;
	
	System_RackState;
	System_RackVolt;
	System_RackCurr;
	System_RackTotal;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

