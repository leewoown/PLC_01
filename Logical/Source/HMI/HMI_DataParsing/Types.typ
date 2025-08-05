
TYPE
	TimeType : 	STRUCT 
		DTGetTime_0 : DTGetTime;
		Original : STRING[30];
		Total : STRING[15];
		Split : TimeSplitType;
	END_STRUCT;
	TimeSplitType : 	STRUCT 
		Day : STRING[10];
		Time : STRING[5];
	END_STRUCT;
END_TYPE
