
ACTION ActMbRtuMaster: 
	
	
	CASE step OF
		
		MB_OPEN:
			
			MbMaster.MBMOpen_0.enable	:= TRUE;
			
			//MbMaster.MBMOpen_0.pDevice	:= ADR('IF1.ST2.IF1.ST3.IF1');  (* Device description string *)
			
			MbMaster.MBMOpen_0.pDevice	:= ADR('IF6.ST1.IF1');  
			MbMaster.MBMOpen_0.pMode	:= ADR('/PHY=RS485 /PA=N /DB=8 /SB=1 /BD=19200');  (* Mode description string *)
			MbMaster.MBMOpen_0.pConfig	:= ADR('datamod');  (* Data object name *)
			MbMaster.MBMOpen_0.timeout	:= 2000;  (* Timeout in milliseconds (the value must be a multiple of 10 and >250ms) *)
			MbMaster.MBMOpen_0.ascii	:= 0;  (* 0 = RTU / 1 = ASCII *)
			
			MbMaster.MBMOpen_0();
			
			IF (MbMaster.MBMOpen_0.status = 0) AND (MbMaster.MBMOpen_0.ident <> 0) THEN
				step := MB_RUN;
				gSignalCheck.RS485_Check := TRUE;
			ELSIF MbMaster.MBMOpen_0.status = 65535 THEN
			ELSIF MbMaster.MBMOpen_0.status <> 0 THEN
				step := MB_ERROR;
			END_IF
			
			
		MB_RUN:
			
			(*When the command Auto is True the MBMbMaster FUB is executed, otherwise the MCMCmd FUB is executed*)
			IF (MbMaster.Auto = TRUE) THEN
				MbMaster.MBMaster_0.enable	:= TRUE;
				MbMaster.MBMaster_0.ident		:= MbMaster.MBMOpen_0.ident;
				MbMaster.MBMaster_0();
				
				IF (MbMaster.MBMaster_0.status = 65535) THEN
				ELSIF MbMaster.MBMaster_0.status <> 0 THEN
					step := MB_ERROR;
				END_IF
				
			ELSE
				MbMaster.MBMCmd_0.enable	:= TRUE;
				MbMaster.MBMCmd_0.ident		:= MbMaster.MBMOpen_0.ident;
				
				IF (MbMaster.ReadDataTrigger) THEN
					MbMaster.MBMCmd_0.mfc 		:= 3;
					MbMaster.MBMCmd_0.data		:= ADR(MbMaster.ReadData);
					MbMaster.MBMCmd_0.offset	:= 0;
				ELSIF(MbMaster.WriteDataTrigger)THEN
					MbMaster.MBMCmd_0.mfc 		:= 16;
					MbMaster.MBMCmd_0.data		:= ADR(MbMaster.WriteData);  (* address of data area *)
					MbMaster.MBMCmd_0.offset	:= 100;
				END_IF;
				MbMaster.MBMCmd_0.node		:= 1;  (* address of the slave station *)
				MbMaster.MBMCmd_0.len		:= 10;					
				MbMaster.MBMCmd_0();
				IF (MbMaster.MBMCmd_0.status = 65535) THEN
				ELSIF (MbMaster.MBMCmd_0.status <> 0) THEN
					step := MB_ERROR;
				END_IF
				
			END_IF
			
			
		MB_CLOSE:
			
			MbMaster.MBMClose_0.enable	:= TRUE;
			MbMaster.MBMClose_0.ident	:= MbMaster.MBMOpen_0.ident;
			MbMaster.MBMClose_0();

			IF MbMaster.MBMClose_0.status = 0 THEN
				step := MB_OPEN;
			ELSIF MbMaster.MBMClose_0.status = 65535 THEN
			ELSIF MbMaster.MBMClose_0.status <> 0 THEN
				step := MB_ERROR;
			END_IF
		
		MB_ERROR:
			
			MbMaster.MBMaster_0.enable	:= FALSE;
			MbMaster.MBMaster_0();
			MbMaster.MBMCmd_0.enable	:= FALSE;
			MbMaster.MBMCmd_0();
			MbMaster.MBMClose_0.enable	:= FALSE;
			MbMaster.MBMClose_0();
			
			IF (MbMaster.MBMOpen_0.ident <> 0) THEN
				MbMaster.MBMOpen_0.enable	:= FALSE;
				MbMaster.MBMOpen_0();
				step := MB_CLOSE;
			ELSE
				step := MB_OPEN;
			END_IF
		
	END_CASE
	
	

END_ACTION
