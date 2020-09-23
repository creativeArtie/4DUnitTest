Case of 
	: (Form event code:C388=On Load:K2:1)
		SET TIMER:C645(100)
	: (Form event code:C388=On Timer:K2:25)
		Form:C1466.log:=ds:C1482.TextLog.all().logObject
		handleLoggerListbox(OBJECT Get pointer:C1124(Object named:K67:5;"lb_log");Form:C1466.log;True:C214)
End case 
