
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	MpJ1939Generic_0.MpLink	:= ADR(gJ1939Generic);
	MpJ1939Generic_0.Enable	:= TRUE;
	MpJ1939Generic_0();
	
	My_EC1;
	My_TSC1;
	My_EEC1;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

