
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)

	IF Sys.NRlyAux AND Sys.PRlyAux AND NOT(Sys.ProRlyAux) THEN
		LAMP.SW_B := TRUE;
	ELSE
		IF LAMP.SW_B THEN
			LAMP.SW_B := FALSE;
		ELSE
			LAMP.SW_B := TRUE;
		END_IF;
	END_IF;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

