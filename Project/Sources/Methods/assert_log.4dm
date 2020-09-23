//%attributes = {"shared":true}
var $1,$message : Text
var $2,$level : Integer
var $3,$details : cs:C1710.Loggable

$message:="Information message pinged."
$level:=Information message:K38:1
Case of 
	: (Count parameters:C259=0)
		
	: (Count parameters:C259=1)
		$message:=$1
	: (Count parameters:C259=2)
		$message:=$1
		$level:=$2
	: (Count parameters:C259=3)
		$message:=$1
		$level:=$2
		$details:=$3
End case 
C_LONGINT:C283($from)
If (Get call chain:C1662.length=1)
	$from:=3
Else 
	$from:=4
End if 
$0:=log_messaage($message;$level;$details;Null:C1517;$from)