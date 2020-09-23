Class constructor
	This:C1470.name:=OB Class:C1730(This:C1470)
	This:C1470.tests:=New collection:C1472
	This:C1470.preLogger:=New collection:C1472
	This:C1470.postLogger:=New collection:C1472
	This:C1470.exceptions:=New collection:C1472
	This:C1470.completed:=False:C215
	
Function loadTests
	ASSERT:C1129(False:C215;"Not a subclass of cs.UnitTest.")
	
Function pushTest
	var $1 : cs:C1710.Test
	If ($1#Null:C1517)
		This:C1470.tests.push($1)
	End if 
	
Function beforeAllTests
Function setCurrent
	var $1 : cs:C1710.Test
	This:C1470.current:=$1
	
Function beforeEachTest
	var $1 : cs:C1710.Test
	
Function afterEachTest
	var $1 : cs:C1710.Test
	
Function afterAllTests
	var $1 : Object
	
Function log
	var $1 : Text
	var $2,$type : Integer
	$type:=Information message:K38:1
	Case of 
		: (Count parameters:C259=1)
		: (Count parameters:C259=2)
			$type:=$2
	End case 
	Case of 
		: (Not:C34(OB Is defined:C1231(This:C1470;"current")))
			log_messaage($1;$2;Null:C1517;This:C1470.preLogger;4)
		: (This:C1470.current=Null:C1517)
			log_messaage($1;$2;Null:C1517;This:C1470.postLogger;4)
		Else 
			log_messaage($1;$2;Null:C1517;This:C1470.current.logLines;4)
	End case 
	
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
		Case of 
			: (Not:C34(OB Is defined:C1231(This:C1470;"current")))
				throwsException($message;This:C1470.exceptions;This:C1470.preLogger;5)
			: (This:C1470.current=Null:C1517)
				throwsException($message;This:C1470.exceptions;This:C1470.postLogger;5)
			Else 
				throwsException($message;This:C1470.current.exceptions;This:C1470.current.logLines;5)
		End case 
	End if 
	
Function assertFail
	var $1;$message
	$message:="Test Fails"
	Case of 
		: (Count parameters:C259=0)
		: (Count parameters:C259=1)
			$message:=$1
	End case 
	Case of 
		: (Not:C34(OB Is defined:C1231(This:C1470;"current")))
			throwsException($message;This:C1470.exceptions;This:C1470.preLogger;5)
		: (This:C1470.current=Null:C1517)
			throwsException($message;This:C1470.exceptions;This:C1470.postLogger;5)
		Else 
			throwsException($message;This:C1470.current.exceptions;This:C1470.current.logLines;5)
	End case 
	
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
		Case of 
			: (Not:C34(OB Is defined:C1231(This:C1470;"current")))
				throwsException($message;This:C1470.exceptions;This:C1470.preLogger;5)
			: (This:C1470.current=Null:C1517)
				throwsException($message;This:C1470.exceptions;This:C1470.postLogger;5)
			Else 
				throwsException($message;This:C1470.current.exceptions;This:C1470.current.logLines;5)
		End case 
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
		Case of 
			: (Not:C34(OB Is defined:C1231(This:C1470;"current")))
				throwsException($message;This:C1470.exceptions;This:C1470.preLogger)
			: (This:C1470.current=Null:C1517)
				throwsException($message;This:C1470.exceptions;This:C1470.postLogger)
			Else 
				throwsException($message;This:C1470.current.exceptions;This:C1470.current.logLines;4)
		End case 
	End if 
	
Function isPass
	var $test : cs:C1710.Test
	var $0 : Boolean
	$0:=This:C1470.exceptions.length=0
	For each ($test;This:C1470.tests) Until (Not:C34($0))
		$0:=$test.isPass()
	End for each 
	
Function resetTests
	This:C1470.tests:=New collection:C1472
	This:C1470.preLogger:=New collection:C1472
	This:C1470.postLogger:=New collection:C1472
	This:C1470.loadTests()
	This:C1470.completed:=False:C215
	OB REMOVE:C1226(This:C1470;"current")
	
Function testStatus
	If (OB Is defined:C1231(This:C1470;"current"))
		If (This:C1470.isPass())
			$0:=0
		Else 
			$0:=-1
		End if 
	Else 
		$0:=-2
	End if 