
PROGRAM _INIT
	(* Insert code here *)
	(*DI*)
	Sys.ProRly		:= 0;
	Sys.PRly		:= 0;
	Sys.NRly		:= 0;
	Sys.Buzzer		:= 0;
	Sys.PowerLamp	:= 0;
	
	(*DO*)
	ProRLYAUX 		:= 0;
	PRLYAUX 		:= 0;
	NRLYAUX 		:= 0;
	EMSRLYAUX		:= 0;
	EMSRLYAUX_BMP	:= 0;
	GasDetectorAUX	:= 0;
	WaterCoolingAUX	:= 0;
	FireDetectorAUX	:= 0;
	
	TON_0.IN		:= FALSE;
	TON_0.PT		:= T#500ms;
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
	
//	IF Sys.FireDetectorAux OR Sys.GasDetectorAux OR Sys.WaterCoolingAux OR Sys.EMSRlyAux_BMP OR Sys.EMSRlyAux THEN
//		Sys.Buzzer := TRUE;
//	ELSE
//		Sys.Buzzer := FALSE;
//	END_IF;
	
	IF (Sys.Buzzer) 	THEN
		IF HMI.DialogBox.BuzzerOFF_Trigger THEN
			Sys.Buzzer	:=	FALSE;
		ELSE
			Buzzer := TRUE;
		END_IF;
	ELSE
		Buzzer :=	FALSE;
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
		Sys.EMSRlyAux :=1;
	ELSE
		Sys.EMSRlyAux :=0;
	END_IF;
	IF EMSRLYAUX_BMP THEN
		Sys.EMSRlyAux_BMP := 1;
	ELSE
		Sys.EMSRlyAux_BMP :=0;
	END_IF;
	IF GasDetectorAUX THEN
		Sys.GasDetectorAux := 1;
	ELSE
		Sys.GasDetectorAux :=0;
	  
	END_IF;
	IF WaterCoolingAUX THEN
		Sys.WaterCoolingAux := 1;
	ELSE
		Sys.WaterCoolingAux :=0;
	  
	END_IF;
	IF FireDetectorAUX THEN
		Sys.FireDetectorAux := 1;
	ELSE
		Sys.FireDetectorAux :=0;
	  
	END_IF;
	
	IF Sys.NRlyAux AND Sys.PRlyAux AND NOT(Sys.ProRlyAux) THEN
		Sys.PowerLamp := TRUE;
	ELSE
		IF TON_0.Q THEN
			Sys.PowerLamp := NOT Sys.PowerLamp; // 상태 반전
			TON_0(IN := FALSE);                 // 타이머 리셋
		ELSE
			TON_0(IN := TRUE, PT := T#500ms);    // 타이머 동작
		END_IF;
	END_IF;
	
	IF Sys.PowerLamp THEN
		PowerLamp := TRUE;
	ELSE
		PowerLamp := FALSE;
	END_IF;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

