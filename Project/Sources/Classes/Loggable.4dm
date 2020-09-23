Class constructor
	var $1,$text : Text
	var $2,$from : Integer
	var $caller : Object
	
	$from:=2
	If (Count parameters:C259=2)
		$from:=$2
	End if 
	
	$caller:=Get call chain:C1662[$from]
	This:C1470.line:=$caller.line
	This:C1470.name:=$caller.name
	This:C1470.database:=$caller.database
	This:C1470.type:=$caller.type
	This:C1470.message:=$1
	This:C1470.timestamp:=Timestamp:C1445
	This:C1470.processName:=Current process name:C1392
	This:C1470.processId:=Current process:C322
	$text:=This:C1470.process
Function getFullName
	var $0 : Text
	$0:=This:C1470.database+":"+This:C1470.name
Function getLocation
	var $0 : Text
	$0:=This:C1470.getFullName()+":"+String:C10(This:C1470.line)
Function getDetailed
	var $0 : Text
	$0:=This:C1470.getLocation()+":"+This:C1470.message
Function getProcess
	var $0 : Text
	$0:=String:C10(This:C1470.processId)+":"+This:C1470.processName