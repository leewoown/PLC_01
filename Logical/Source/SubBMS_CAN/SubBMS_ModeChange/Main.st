
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	IF Rack1_Handle.BSA_Divice_Status = 4 THEN
		RackTxSeq.BSA_Rack1_Mode := TRUE;
	END_IF;
	IF Rack2_Handle.BSA_Divice_Status = 4 THEN
		RackTxSeq.BSA_Rack2_Mode := TRUE;
	END_IF;
	IF Rack3_Handle.BSA_Divice_Status = 4 THEN
		RackTxSeq.BSA_Rack3_Mode := TRUE;
	END_IF;
	IF Rack4_Handle.BSA_Divice_Status = 4 THEN
		RackTxSeq.BSA_Rack4_Mode := TRUE;
	END_IF;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

