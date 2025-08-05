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
		Status : mbGetLastException;
		Read_Coils : mbReadCoils;
		Read_Discrete_Inputs : mbReadDiscreteInputs;
		Read_Holding_Registers : mbReadHoldingRegisters;
		Read_Input_Registers : mbReadInputRegisters;
		Write_Single_Coil : mbWriteSingleCoil;
		Write_Single_Registers : mbWriteSingleRegister;
		Write_Multiple_Coil : mbWriteMultipleCoils;
		Write_Multiple_Registers : mbWriteMultipleRegisters;
		Data : ModbusDataType;
	END_STRUCT;
	ModbusDataType : 	STRUCT 
		Coils : ARRAY[0..COILS_NUM_MINUS_1]OF BOOL;
		Register : ARRAY[0..REGITSTER_NUM_MINUS_1]OF INT;
	END_STRUCT;
END_TYPE
