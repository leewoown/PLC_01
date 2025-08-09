

PROGRAM _INIT

	ActArCanReceiver;
	ArCanReceiver.enable				:= TRUE;
	ArCanReceiver.receiverDeviceName 	:= 'IF7';       (* for X20CP0482 CPU *)
	ArCanReceiver.id					:= 16#600; 
	//	ArCanReceiver.idMask				:= arCAN_RECEIVE_ALL;  // or configure IDMask
	ArCanReceiver.idMask				:= 16#600 ;  // or configure IDMask
	ArCanReceiver.format				:= arCAN_11BIT;  // or arCAN_29BIT
	ArCanReceiver.queueSize				:= 256;
	ArCanReceiver.ArCanSetBitTimingRegisters_0.Register0 := 0;
	ArCanReceiver.ArCanSetBitTimingRegisters_0.Register1 := 16#1C;

	(**********************	 CAN Baud rate Register Value	*************************)
	(********************************************************************************)
	(* 	  1 000 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#14	*)
	(* 		800 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#16	*)
	(* 		500 000 bit/s    >>		Register0 = 16#00	||		Register1 = 16#1C	*)
	(* 		250 000 bit/s    >>		Register0 = 16#01	||		Register1 = 16#1C	*)
	(* 		125 000 bit/s    >>		Register0 = 16#03	||		Register1 = 16#1C	*)
	(* 		100 000 bit/s    >>		Register0 = 16#04	||		Register1 = 16#1C	*)
	(* 		050 000 bit/s    >>		Register0 = 16#09	||		Register1 = 16#1C	*)
	(* 		020 000 bit/s    >>		Register0 = 16#18	||		Register1 = 16#1C	*)
	(* 		010 000 bit/s    >>		Register0 = 16#31	||		Register1 = 16#1C	*)
	(********************************************************************************)
	(********************************************************************************)

	CmdSim	:= 1;
	
	SubBMS_Sim.Rack1.BSA.Rack_State.Field.BSA_Divice_Status := 3;
	
END_PROGRAM

PROGRAM _CYCLIC	
	IF CmdSim THEN

		(*ActSimulation;*)
		memcpy(ADR(SubBMS), ADR(SubBMS_Sim), SIZEOF(SubBMS));

	ELSE
		ActArCanReceiver;
		(***********************************************************)
		(* Customize the received data *)
		// ArCanReceiver.ArCanReceiver_0.ReceivedFrame; //Data received
		IF (ArCanReceiver.ArCanReceiver_0.NewDataValid) THEN

			CASE ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID OF

				16#600..16#60E: // RACK 1

				//0 : BMS
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#600 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.BSA_Product.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.BSA_Product.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#601 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Rack_Calc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Rack_Calc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#602 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Rack_State.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Rack_State.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#603 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Rack_AlarmState.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Rack_AlarmState.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#604 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Rack_PWRCalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Rack_PWRCalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#605 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Rack_Cell_Vcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#606 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Rack_Cell_Tcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#607 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Rack_Cell_Pcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#608 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Modul1_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Modul1_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#609 THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Modul2_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Modul2_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60A THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Modul3_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Modul3_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60B THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Modul4_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Modul4_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60C THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Modul5_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Modul5_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60D THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Modul6_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Modul6_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#60E THEN

					memcpy(ADR(SubBMS.Rack1.BSA.Modul7_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack1.BSA.Modul7_Info.Value));

				END_IF;

				16#610..16#61E: // RACK 2

				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#610 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.BSA_Product.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.BSA_Product.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#611 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Rack_Calc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Rack_Calc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#612 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Rack_State.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Rack_State.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#613 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Rack_AlarmState.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Rack_AlarmState.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#614 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Rack_PWRCalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Rack_PWRCalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#615 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Rack_Cell_Vcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#616 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Rack_Cell_Tcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#617 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Rack_Cell_Pcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#618 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Modul1_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Modul1_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#619 THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Modul2_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Modul2_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61A THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Modul3_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Modul3_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61B THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Modul4_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Modul4_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61C THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Modul5_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Modul5_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61D THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Modul6_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Modul6_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#61E THEN

					memcpy(ADR(SubBMS.Rack2.BSA.Modul7_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack2.BSA.Modul7_Info.Value));

				END_IF;

				16#620..16#62E: // RACK 2

				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#620 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.BSA_Product.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.BSA_Product.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#621 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Rack_Calc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Rack_Calc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#622 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Rack_State.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Rack_State.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#623 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Rack_AlarmState.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Rack_AlarmState.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#624 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Rack_PWRCalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Rack_PWRCalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#625 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Rack_Cell_Vcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#626 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Rack_Cell_Tcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#627 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Rack_Cell_Pcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#628 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Modul1_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Modul1_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#629 THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Modul2_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Modul2_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62A THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Modul3_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Modul3_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62B THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Modul4_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Modul4_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62C THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Modul5_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Modul5_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62D THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Modul6_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Modul6_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#62E THEN

					memcpy(ADR(SubBMS.Rack3.BSA.Modul7_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack3.BSA.Modul7_Info.Value));

				END_IF;
				16#630..16#63E: // RACK 2

				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#630 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.BSA_Product.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.BSA_Product.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#631 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Rack_Calc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Rack_Calc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#632 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Rack_State.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Rack_State.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#633 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Rack_AlarmState.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Rack_AlarmState.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#634 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Rack_PWRCalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Rack_PWRCalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#635 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Rack_Cell_Vcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#636 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Rack_Cell_Tcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#637 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Rack_Cell_Pcalc.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#638 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Modul1_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Modul1_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#639 THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Modul2_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Modul2_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63A THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Modul3_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Modul3_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63B THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Modul4_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Modul4_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63C THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Modul5_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Modul5_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63D THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Modul6_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Modul6_Info.Value));

				END_IF;
				IF ArCanReceiver.ArCanReceiver_0.ReceivedFrame.ID = 16#63E THEN

					memcpy(ADR(SubBMS.Rack4.BSA.Modul7_Info.Value), ADR(ArCanReceiver.ArCanReceiver_0.ReceivedFrame.Data), SIZEOF(SubBMS.Rack4.BSA.Modul7_Info.Value));

				END_IF;

			END_CASE;

		END_IF

		ActRACK1DATARxParshing;
		ActRACK2DATARxParshing;
		ActRACK3DATARxParshing;
		ActRACK4DATARxParshing;

		(***********************************************************)
		(* CAN Communication Status *)
		(***********************************************************)

		IF ArCanReceiver.ArCanReceiver_0.Error THEN
			gComm.CAN1.bError	:= TRUE;
			gComm.CAN1.bActive	:= FALSE;
			gComm.CAN1.bTransmitting	:= FALSE;
		ELSIF ArCanReceiver.ArCanReceiver_0.Active AND ArCanReceiver.ArCanReceiver_0.Busy THEN
			gComm.CAN1.bError	:= FALSE;
			gComm.CAN1.bActive	:= TRUE;

			IF (countCANSuccessOld <> ArCanReceiver.successCount) THEN
				countCANSuccessOld	:= ArCanReceiver.successCount;
				gComm.CAN1.bTransmitting	:= TRUE;
				countTime	:= 0;
			ELSE
				countTime	:= countTime + 1;
				IF (countTime > 50) THEN
					gComm.CAN1.bTransmitting	:= FALSE;
					countTime	:= 0;
				END_IF
			END_IF
		ELSE
			gComm.CAN1.bError	:= FALSE;
			gComm.CAN1.bActive	:= FALSE;
			gComm.CAN1.bTransmitting	:= FALSE;
		END_IF
		(***********************************************************)
	END_IF;

END_PROGRAM





PROGRAM _EXIT

(* Deinitialization of the receiver *)
	ArCanReceiver.ArCanReceiver_0.Enable	:= FALSE;
	ArCanReceiver.ArCanReceiver_0();

END_PROGRAM
