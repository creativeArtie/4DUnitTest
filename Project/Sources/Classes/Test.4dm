Class constructor
	var $1 : Text
	If ($1=Null:C1517)
		This:C1470.name:=OB Class:C1730(This:C1470).name
	Else 
		This:C1470.name:=$1
	End if 
	This:C1470.logLines:=New collection:C1472
	This:C1470.exceptions:=New collection:C1472
	
Function runTest
	ASSERT:C1129(False:C215;"Not a subclass of cs.Test.")
	
Function log
	var $1 : Text
	var $2,$type : Integer
	$type:=Information message:K38:1
	Case of 
		: (Count parameters:C259=1)
		: (Count parameters:C259=2)
			$type:=$2
	End case 
	log_messaage($1;$type;Null:C1517;This:C1470.logLines;4)
	
Function assertEquals
	var $1 : Variant
	var $2 : Variant
	var $3,$message : Text
	$message:="\"$1\" not equals to \"$2\""
	Case of 
		: (Count parameters:C259=2)
		: (Count parameters:C259=3)
			$message:=$3
	End case 
	$message:=Replace string:C233($message;"$1";String:C10($1))
	$message:=Replace string:C233($message;"$2";String:C10($2))
	If ($1#$2)
		throwsException($message;This:C1470.exceptions;This:C1470.logLines;5)
	End if 
	
Function assertFail
	var $1;$message
	$message:="Test Fails"
	Case of 
		: (Count parameters:C259=0)
		: (Count parameters:C259=1)
			$message:=$1
	End case 
	throwsException($message;This:C1470.exceptions;This:C1470.logLines;5)
	
Function assertTrue
	var $1;$test
	var $2;$message
	$message:="Test is not true"
	Case of 
		: (Count parameters:C259=1)
			$test:=$1
		: (Count parameters:C259=2)
			$test:=$1
			$message:=$2
	End case 
	$message:=Replace string:C233($message;"$1";String:C10($1))
	If (Not:C34($test))
		throwsException($message;This:C1470.exceptions;This:C1470.logLines;5)
	End if 
	
Function assertFalse
	var $1;$test
	var $2;$message
	$message:="Test is not false"
	Case of 
		: (Count parameters:C259=1)
			$test:=$1
		: (Count parameters:C259=2)
			$test:=$1
			$message:=$2
	End case 
	$message:=Replace string:C233($message;"$1";String:C10($1))
	If ($test)
		throwsException($message;This:C1470.exceptions;This:C1470.logLines;5)
	End if 
	
Function isPass
	var $0 : Boolean
	$0:=This:C1470.exceptions.length=0
	
Function getName
	$0:=This:C1470.name