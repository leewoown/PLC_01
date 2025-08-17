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
		
		StateMa	:=  vkSYSTEM_RESET;
		
		
		HMI.AdminDeviceReset := FALSE;
		
		FOR i:=0 TO 27 DO
			HMI_Alarm.Protect[i].Internal_Count := 0;

		END_FOR;
	END_IF;
END_ACTION
