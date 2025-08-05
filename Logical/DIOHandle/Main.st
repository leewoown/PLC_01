
PROGRAM _INIT
	(* Insert code here *)
	Sys.ProRly	:= 0;
	Sys.PRly	:= 0;
	Sys.NRly	:= 0;
	ProRLYAUX 	:= 0;
	PRLYAUX 	:= 0;
	NRLYAUX 	:= 0;
	EMSRLYAUX	:= 0;
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	IF Sys.ProRly = 1	 	THEN
		ProRLY := 1;
	ELSE 
	   	ProRLY := 0;
	END_IF;

	IF Sys.PRly = 1	 	THEN
		PRLY := 1;
	ELSE 
		PRLY := 0;
	END_IF;
	
	IF Sys.NRly = 1	 	THEN
		NRLY := 1;
	ELSE 
		NRLY := 0;
	END_IF;
	
	(* DI Check *)
	IF ProRLYAUX = 1 THEN
		Sys.ProRlyAux :=1;
	ELSE
		Sys.ProRlyAux :=0;
	END_IF;
	
	IF PRLYAUX = 1 THEN
		Sys.PRlyAux :=1;
	ELSE
		Sys.PRlyAux :=0;
	END_IF;
	
	IF NRLYAUX = 1 THEN
		Sys.NRlyAux :=1;
	ELSE
		Sys.NRlyAux :=0;
	END_IF;
	
	IF EMSRLYAUX = 1 THEN
		Sys.EMSRlyAux :=0;
	ELSE
		Sys.EMSRlyAux :=1;
	END_IF;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

