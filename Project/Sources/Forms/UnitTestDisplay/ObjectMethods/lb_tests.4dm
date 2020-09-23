Case of 
	: (Form event code:C388=On Selection Change:K2:29)
		If (Form:C1466.test#Null:C1517)
			handleLoggerListbox(OBJECT Get pointer:C1124(Object named:K67:5;"lb_log");Form:C1466.test.logLines;True:C214)
			FORM GOTO PAGE:C247(2)
		End if 
End case 