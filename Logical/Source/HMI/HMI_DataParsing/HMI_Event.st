ACTION ActLOGIN	:
	IF NOT(HMI.AdminLogin.Input_Button = '') THEN
		IF (HMI.AdminLogin.Input_Button = 'E') THEN
			IF NOT(LEN(HMI.AdminLogin.Password_Internal) = 0) THEN
				HMI.AdminLogin.Password_Internal 	:= LEFT(HMI.AdminLogin.Password_Internal,LEN(HMI.AdminLogin.Password_Internal)-1);
				HMI.AdminLogin.Password_External 	:= LEFT(HMI.AdminLogin.Password_External,LEN(HMI.AdminLogin.Password_External)-1);
			END_IF;
		ELSIF (HMI.AdminLogin.Input_Button = 'L') THEN
			IF HMI.AdminLogin.Password_Internal = PASSWORD THEN
				HMI.AdminLogin.Authority 		:= ADMIN;
				HMI.AdminLogin.Password_Internal:= '';
				HMI.AdminLogin.Password_External:= '';
			END_IF;
		ELSE
			HMI.AdminLogin.Password_Internal 	:= CONCAT(HMI.AdminLogin.Password_Internal,HMI.AdminLogin.Input_Button);
			HMI.AdminLogin.Password_External 	:= CONCAT(HMI.AdminLogin.Password_External,'*');
		END_IF;
		HMI.AdminLogin.Input_Button 		:= '';
	END_IF;
END_ACTION

ACTION ActDeviceReset:
	IF (HMI.AdminDeviceReset) THEN
		
		StateMa := vkSYSTEM_PROTECT_CHECK;
		FOR LoopNum := 0 TO 18 DO
			HMI_Alarm.Fault[LoopNum].InitialTime		:=	'';
			HMI_Alarm.Fault[LoopNum].RecentTime			:=	'';
			HMI_Alarm.Fault[LoopNum].ClearTime			:=	'';
			HMI_Alarm.Fault[LoopNum].Count				:=	0;
			HMI_Alarm.Warning[LoopNum].InitialTime		:=	'';
			HMI_Alarm.Warning[LoopNum].RecentTime		:=	'';
			HMI_Alarm.Warning[LoopNum].ClearTime		:=	'';
			HMI_Alarm.Warning[LoopNum].Count			:=	0;
			HMI_Alarm.Protect[LoopNum].InitialTime		:=	'';
			HMI_Alarm.Protect[LoopNum].RecentTime		:=	'';
			HMI_Alarm.Protect[LoopNum].ClearTime		:=	'';
			HMI_Alarm.Protect[LoopNum].Count			:=	0;
			
		END_FOR;
		
		HMI.DialogBox.Protect_Trigger := FALSE;
		HMI.AdminDeviceReset := FALSE;
		
	END_IF;
END_ACTION
