(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Program: MbApp
 * File: MbApp.typ
 * Author: Bernecker + Rainer
 * Created: October 22, 2009
 ********************************************************************
 * Local data types of program MbApp
 ********************************************************************)

TYPE
	Initial_ParameterType : 	STRUCT 
		ModbusStation : STRING[20];
		Coils_startAddress : UINT;
		register_StartAddress : UINT;
		FunctionNum : UDINT;
		RegisterNum : USINT;
		CoilsNum : USINT;
	END_STRUCT;
	ModbusCtrlType : 	STRUCT 
		Init_Parameter : Initial_ParameterType;
		Read_Holding_Registers : mbSlWordGet;
		Write_Multiple_Registers : mbSlWordPut;
		Read_Coils : mbSlBoolGet;
		Write_Multiple_Coils : mbSlBoolPut;
		Data : ModbusDataType;
	END_STRUCT;
	ModbusDataType : 	STRUCT 
		Coils : ARRAY[0..COILS_NUM_MINUS_1]OF BOOL;
		Register : ARRAY[0..127]OF UINT;
	END_STRUCT;
END_TYPE
