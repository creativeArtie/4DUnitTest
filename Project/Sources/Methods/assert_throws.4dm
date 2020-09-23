//%attributes = {"shared":true}
var $0 : cs:C1710.Exception
var $1,$message : Text

Case of 
	: (Count parameters:C259=0)
		$message:="General Exception"
	: (Count parameters:C259=1)
		$message:=$1
End case 
throwsException($message;Null:C1517;Null:C1517;5)