Class extends Loggable
Class constructor
	var $1 : Text
	var $2 : Integer
	Case of 
		: (Count parameters:C259=1)
			Super:C1705($1)
		: (Count parameters:C259=2)
			Super:C1705($1;$2)
	End case 
	This:C1470.stacktrace:=Get call chain:C1662
Function showStackTrace
	var $1 : Time
	var $form : Object
	$win:=Open form window:C675("StackTraceDialog";Plain form window:K39:10)
	$form:=OB Copy:C1225(This:C1470)
	DIALOG:C40("StackTraceDialog";$form)
	CLOSE WINDOW:C154($win)