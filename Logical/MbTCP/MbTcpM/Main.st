PROGRAM _INIT

	(* init values *)
	ModbusCtrl.Init_Parameter.ModbusStation					:= 'IF2.ST2' ;
	ModbusCtrl.Init_Parameter.register_StartAddress			:= 0 ;
	ModbusCtrl.Init_Parameter.FunctionNum					:= mbMFC_READ_HOLDING_REGISTERS ;
	
	
	fub_status			:= 0;							(* status of function blocks *)
	mb_exception		:= 0;							(* modbus exception *)

END_PROGRAM

// CAN_TO_TCP_Convert
PROGRAM _CYCLIC
	
	(* WORKING STATE MACHINE *)
	CASE (ModbusCtrl.Init_Parameter.FunctionNum) OF
		mbMFC_READ_COILS: 				// Modbus Function 01
			
			ModbusCtrl.Read_Coils.enable					:= TRUE ;
			ModbusCtrl.Read_Coils.pStation 					:= ADR(ModbusCtrl.Init_Parameter.ModbusStation) ;
			ModbusCtrl.Read_Coils.startAddress 				:= ModbusCtrl.Init_Parameter.Coils_startAddress ;
			ModbusCtrl.Read_Coils.nrCoils 					:= COILS_NUM ;
			ModbusCtrl.Read_Coils.pData 					:= ADR(ModbusCtrl.Data.Coils);
			ModbusCtrl.Read_Coils.dataSize 					:= SIZEOF(ModbusCtrl.Data.Coils) ;
			ModbusCtrl.Read_Coils() ;												(* call function block *)
			
			IF (ModbusCtrl.Read_Coils.status <> ERR_FUB_BUSY) THEN
				fub_status 			:= ModbusCtrl.Read_Coils.status;
				check_status 		:= TRUE;			(* flag to check status *)
				instruction_ready 	:= TRUE;			(* flag marks instruction "ready" *)
			END_IF	
			
		mbMFC_READ_HOLDING_REGISTERS: 	// Modbus Function 03
			
			ModbusCtrl.Read_Holding_Registers.enable 		:= TRUE;
			ModbusCtrl.Read_Holding_Registers.pStation		:= ADR(ModbusCtrl.Init_Parameter.ModbusStation);
			ModbusCtrl.Read_Holding_Registers.startAddress 	:= ModbusCtrl.Init_Parameter.register_StartAddress;
			ModbusCtrl.Read_Holding_Registers.nrRegisters	:= REGITSTER_NUM ;
			ModbusCtrl.Read_Holding_Registers.pData 		:= ADR(ModbusCtrl.Data.Register);
			ModbusCtrl.Read_Holding_Registers.dataSize		:= SIZEOF(ModbusCtrl.Data.Register);
			ModbusCtrl.Read_Holding_Registers() ;										(* call function block *)
			
			IF (ModbusCtrl.Read_Holding_Registers.status <> ERR_FUB_BUSY) THEN
				fub_status 			:= ModbusCtrl.Read_Holding_Registers.status;
				check_status 		:= TRUE;			(* flag to check status *)
				instruction_ready 	:= TRUE;			(* flag marks instruction "ready" *)
			END_IF	
			
		mbMFC_WRITE_SINGLE_REGISTER: 	// Modbus Function 06 
			
			ModbusCtrl.Write_Single_Registers.enable 		:= 1;
			ModbusCtrl.Write_Single_Registers.pStation 		:= ADR(ModbusCtrl.Init_Parameter.ModbusStation);
			ModbusCtrl.Write_Single_Registers.startAddress 	:= ModbusCtrl.Init_Parameter.register_StartAddress;
			//ModbusCtrl.Write_Single_Registers.value 		:= register_value;
			ModbusCtrl.Write_Single_Registers();										(* call function block *)
			
			IF (ModbusCtrl.Write_Single_Registers.status <> ERR_FUB_BUSY) THEN
				fub_status 			:= ModbusCtrl.Write_Single_Registers.status;
				check_status 		:= TRUE;			(* flag to check status *)
				instruction_ready 	:= TRUE;			(* flag marks instruction "ready" *)
			END_IF
		
	END_CASE
	
	
	(* ERROR HANDLING *)
	IF (check_status) THEN
 	
		CASE fub_status OF
  			
			ERR_OK:
				CASE(ModbusCtrl.Init_Parameter.FunctionNum) OF
					
					mbMFC_READ_HOLDING_REGISTERS: 
						memcpy(ADR(gBAT1.ModbusTCP),ADR(ModbusCtrl.Data.Register),REGITSTER_NUM);
				END_CASE
				
			mbERR_EXCEPTION:
				(* modbus station response sent a modbus exception *)
				ModbusCtrl.Status.enable := 1;
				ModbusCtrl.Status.pStation := ADR(ModbusCtrl.Init_Parameter.ModbusStation);
				ModbusCtrl.Status();										(* call function block *)
				mb_exception := ModbusCtrl.Status.mbExcp;			
				
			ELSE
				(* other error handling *)			
				
		END_CASE		
	
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