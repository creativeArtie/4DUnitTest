//%attributes = {}
var $1,$loggable : cs:C1710.Loggable

Case of 
	: (Count parameters:C259=1)
		$loggable:=$1
End case 

var $methodType : Integer
Case of 
	: ($loggable.type="projectMethod")
		$methodType:=Path project method:K72:1
	: ($loggable.type="formObjectMethod")
		$methodType:=Path project form:K72:3
	: ($loggable.type="databaseMethod")
		$methodType:=Path database method:K72:2
	: ($loggable.type="triggerMethod")
		$methodType:=Path trigger:K72:4
	: ($loggable.type="executeOnServer")
		$methodType:=Path project method:K72:1
	: ($loggable.type="executeFormula")
End case 

var $path : Text
$path:=METHOD Get path:C1164($methodType;$loggable.name)
METHOD OPEN PATH:C1213($path)