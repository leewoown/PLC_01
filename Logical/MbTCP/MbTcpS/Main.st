
PROGRAM _INIT

	
	ModbusCtrl.Init_Parameter.ModbusStation					:= 'IF2.MODBUSSLAVE_1' ;
	ModbusCtrl.Init_Parameter.register_StartAddress			:= 0 ;
	ModbusCtrl.Init_Parameter.FunctionNum					:= mbMFC_WRITE_MULTIPLE_REGISTERS ;
	
	fub_status			:= 0;							(* status of function blocks *)
	mb_exception		:= 0;							(* modbus exception *)

END_PROGRAM


PROGRAM _CYCLIC
	
	(* WORKING STATE MACHINE *)
	CASE (ModbusCtrl.Init_Parameter.FunctionNum) OF
			
		mbMFC_WRITE_MULTIPLE_REGISTERS: 	// Modbus Function 03
			
//			memcpy(ADR(ModbusCtrl.Data.Register), ADR(gBAT.ModbusTCP), SIZEOF(gBAT.ModbusTCP) / SIZEOF(gBAT.ModbusTCP.BSA0) );
			
//			ModbusCtrl.Write_Multiple_Registers(enable := TRUE, 
//				startAddress := 16#6000, 
//				nrOfItems := SIZEOF(gBAT.ModbusTCP) / SIZEOF(gBAT.ModbusTCP.BSA0), 
//				station := ModbusCtrl.Init_Parameter.ModbusStation, 
//				data := ModbusCtrl.Data.Register);
			
			IF (ModbusCtrl.Read_Holding_Registers.status <> ERR_FUB_BUSY) THEN
				fub_status 			:= ModbusCtrl.Write_Multiple_Registers.status;
				
				check_status 		:= TRUE;			(* flag to check status *)
				instruction_ready 	:= TRUE;			(* flag marks instruction "ready" *)
			ELSE
				
			END_IF	
			
	END_CASE
	
	
	(* ERROR HANDLING *)
	IF (check_status) THEN
 	
		CASE fub_status OF
  			
			ERR_OK:
				
				gSignalCheck.TCP_Check := TRUE;
				
			ELSE
   				(* other error handling *)			
				
		END_CASE;		
	
		(* stop checking *)
		check_status := FALSE;
	END_IF


//
//	(* STATE MACHINE CONTROL *)
//	IF (instruction_ready AND fub_status = ERR_OK) THEN
// 	
//		CASE (instruction) OF
//	
//			mbMFC_READ_HOLDING_REGISTERS:
//				instruction 		:= mbMFC_READ_COILS;
//				instruction_ready 	:= FALSE;
//				
//			mbMFC_READ_COILS:
//				instruction 		:= mbMFC_READ_HOLDING_REGISTERS;
//				instruction_ready 	:= FALSE;
//				
//		END_CASE
//	
//	END_IF	


END_PROGRAM
