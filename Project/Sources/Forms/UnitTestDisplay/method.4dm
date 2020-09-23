If (Form event code:C388=On Load:K2:1)
	Form:C1466.reload:=False:C215
	If (Form:C1466.completed)
		OBJECT SET ENABLED:C1123(*;"b_run";False:C215)
		OBJECT SET ENABLED:C1123(*;"b_clear";False:C215)
		OBJECT SET VISIBLE:C603(*;"col_pass";True:C214)
		OBJECT SET VISIBLE:C603(*;"col_logCount";True:C214)
		OBJECT SET VISIBLE:C603(*;"col_exceptionCount";True:C214)
	End if 
End if 

If (Form:C1466.reload=True:C214)
	handleLoggerListbox(OBJECT Get pointer:C1124(Object named:K67:5;"lb_prelog");Form:C1466.preLogger;True:C214)
	handleLoggerListbox(OBJECT Get pointer:C1124(Object named:K67:5;"lb_postlog");Form:C1466.postLogger;True:C214)
	If (Form:C1466.test#Null:C1517)
		handleLoggerListbox(OBJECT Get pointer:C1124(Object named:K67:5;"lb_log");Form:C1466.test.logLines;True:C214)
	Else 
		handleLoggerListbox(OBJECT Get pointer:C1124(Object named:K67:5;"lb_log");New collection:C1472;True:C214)
	End if 
End if 
Form:C1466.reload:=False:C215
OBJECT SET ENABLED:C1123(*;"b_save";Form:C1466.completed)