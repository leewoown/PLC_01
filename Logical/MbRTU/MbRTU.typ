(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * File: Global.typ
 * Author: Bernecker + Rainer
 * Created: February 12, 2010
 ********************************************************************
 * Global data types of project Modbus
 ********************************************************************)

TYPE
	MbMaster_typ : 	STRUCT 
		MBMaster_0 : MBMaster; (*This FUB operates the Modbus protocol in runtime, 
The Modbus commands are executed in the sequence in which they are entered in the data object*)
		MBMClose_0 : MBMClose; (*The FUB closes the driver environment, to enable the MBMOpen FUB to be called again.*)
		MBMCmd_0 : MBMCmd; (*This FUB operates the Modbus protocol in runtime
The FUB first sends the Modbus command to the Modbus slave(s) and then waits for a response*)
		MBMOpen_0 : MBMOpen; (*The MBMOpen FUB configures the interface and initializes the internal structures that are required*)
		Auto : BOOL; (*command to start sending*)
		ReadData : ARRAY[0..9]OF UINT;
		WriteData : ARRAY[0..9]OF UINT;
		ReadDataTrigger : BOOL;
		WriteDataTrigger : BOOL;
	END_STRUCT;
END_TYPE
