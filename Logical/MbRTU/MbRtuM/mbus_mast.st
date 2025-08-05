(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Program: mbus_mast
 * File: mbus_mast.st
 * Author: Bernecker + Rainer
 * Created: February 17, 2010
 ********************************************************************
 * Implementation of program mbus_mast
 ********************************************************************)


PROGRAM _INIT

	step	:= MB_OPEN;
	
	MbMaster.Auto				:= TRUE;
	MbMaster.ReadDataTrigger	:= FALSE;
	MbMaster.WriteDataTrigger	:= FALSE;
	memset(ADR(MbMaster.ReadData),0,SIZEOF(MbMaster.ReadData));     (*reset the data*)
	memset(ADR(MbMaster.WriteData),0,SIZEOF(MbMaster.WriteData));   (*reset the data*)
	
	(* Basic Configuration *)
	//MbMaster.MBMOpen_0.pDevice	:= ADR('IF1.ST2.IF1.ST3.IF1');  (* Device description string *)
	//MbMaster.MBMOpen_0.pDevice	:= ADR('IF6.ST10');
	//MbMaster.MBMOpen_0.pMode	:= ADR('/PHY=RS485 /PA=N /DB=8 /SB=1 /BD=19200');  (* Mode description string *)
	//MbMaster.MBMOpen_0.pConfig 	:= ADR('datamod');
	//MbMaster.MBMOpen_0.ascii	:= 0;  (* 0 = RTU / 1 = ASCII *)
	
		
END_PROGRAM


PROGRAM _CYCLIC

	(* Action for ActMbRtuMaster *)
	ActMbRtuMaster;
	
	
	(* Input & Output Variables *)
	MbMaster.ReadData[0];
	
	MbMaster.WriteDataTrigger;
	MbMaster.WriteData[0];
	
	
END_PROGRAM