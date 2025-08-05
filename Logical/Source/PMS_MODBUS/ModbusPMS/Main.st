
PROGRAM _INIT

	ModbusCtrl.Init_Parameter.ModbusStation					:= 'IF2.MODBUSSLAVE_1' ;
	ModbusCtrl.Init_Parameter.register_StartAddress			:= 0 ;
	ModbusCtrl.Init_Parameter.FunctionNum					:= mbMFC_READ_INPUT_REGISTERS ;
	ModbusCtrl.Init_Parameter.RegisterNum					:= 72;
	
	
	fub_status			:= 0;							(* status of function blocks *)
	mb_exception		:= 0;							(* modbus exception *)

END_PROGRAM


PROGRAM _CYCLIC
	
	(* WORKING STATE MACHINE *)	// 16 BIT << CAN DATA 64 BIT
	memcpy(ADR(ModbusCtrl.Data.Register[0]),ADR(PMS.SysBatProduct.Value),SIZEOF(PMS.SysBatProduct.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[4]),ADR(PMS.SysBatCal.Value),SIZEOF(PMS.SysBatCal.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[8]),ADR(PMS.SysBatPWR.Value),SIZEOF(PMS.SysBatPWR.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[12]),ADR(PMS.SysCellVolt.Value),SIZEOF(PMS.SysCellVolt.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[16]),ADR(PMS.SysCellTemps.Value),SIZEOF(PMS.SysCellTemps.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[20]),ADR(PMS.SysCellV_TPos.Value),SIZEOF(PMS.SysCellV_TPos.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[24]),ADR(PMS.SysBatProtect.Value),SIZEOF(PMS.SysBatProtect.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[28]),ADR(PMS.SysBatDIO.Value),SIZEOF(PMS.SysBatDIO.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[32]),ADR(PMS.BRACal.Value),SIZEOF(PMS.BRACal.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[36]),ADR(PMS.BRAPWR_A.Value),SIZEOF(PMS.BRAPWR_A.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[40]),ADR(PMS.BRAPWR_B.Value),SIZEOF(PMS.BRAPWR_B.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[44]),ADR(PMS.BRACellV.Value),SIZEOF(PMS.BRACellV.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[48]),ADR(PMS.BRACellT.Value),SIZEOF(PMS.BRACellT.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[52]),ADR(PMS.BRACellDiv.Value),SIZEOF(PMS.BRACellDiv.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[56]),ADR(PMS.BRA_VTPos.Value),SIZEOF(PMS.BRA_VTPos.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[60]),ADR(PMS.BAR_Alarm.Value),SIZEOF(PMS.BAR_Alarm.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[64]),ADR(PMS.BAR_Protect.Value),SIZEOF(PMS.BAR_Protect.Value));
	memcpy(ADR(ModbusCtrl.Data.Register[68]),ADR(PMS.BAR_DIO.Value),SIZEOF(PMS.BAR_DIO.Value));
	
	
	CASE (ModbusCtrl.Init_Parameter.FunctionNum) OF
		mbMFC_READ_INPUT_REGISTERS:
			
			ModbusCtrl.Write_Multiple_Registers(enable := TRUE, 
				startAddress := 30001, 
			nrOfItems := ModbusCtrl.Init_Parameter.RegisterNum, 
			station := ModbusCtrl.Init_Parameter.ModbusStation, 
			data := ModbusCtrl.Data.Register);

			IF (ModbusCtrl.Read_Holding_Registers.status <> ERR_FUB_BUSY) THEN
				fub_status 			:= ModbusCtrl.Write_Multiple_Registers.status;
				
				check_status 		:= TRUE;			(* flag to check status *)
				instruction_ready 	:= TRUE;			(* flag marks instruction "ready" *)
			ELSE
				
			END_IF	
			
			
			
		mbMFC_READ_HOLDING_REGISTERS: 	// Modbus Function 03
			
			ModbusCtrl.Read_Holding_Registers(enable := TRUE, 
				startAddress := 40001, 
				nrOfItems := 1, 
			station := ModbusCtrl.Init_Parameter.ModbusStation, 
			data := ModbusCtrl.Data.Register);
			
//			Modbus.BSA_WakeUp_CMD 	:= ModbusCtrl.Data.Register[0].0;
//			Modbus.BSA_POWER_CMD	:= ModbusCtrl.Data.Register[0].1;
//			Modbus.BSA_FaultReset	:= ModbusCtrl.Data.Register[0].8;
			
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
