//%attributes = {}
var $1,$message : Text
var $2,$level : Integer
var $3,$details : cs:C1710.Loggable
var $4,$log : Collection
var $5,$from : Integer
var $0 : cs:C1710.LogLine
$message:="Information message pinged."
$level:=Information message:K38:1
If (Get call chain:C1662.length=1)
	$from:=2
Else 
	$from:=3
End if 

Case of 
	: (Count parameters:C259=1)
		$message:=$1
	: (Count parameters:C259=2)
		$message:=$1
		$level:=$2
	: (Count parameters:C259=3)
		$message:=$1
		$level:=$2
		$details:=$3
	: (Count parameters:C259=4)
		$message:=$1
		$level:=$2
		$details:=$3
		$log:=$4
	: (Count parameters:C259=5)
		$message:=$1
		$level:=$2
		$details:=$3
		$log:=$4
		$from:=$5
End case 
$new:=cs:C1710.LogLine.new($message;$level;$from;$details)
If ($log#Null:C1517)
	$log.push($new)
Else 
	var $out : cs:C1710.TextLogEntity
	$out:=ds:C1482.TextLog.new()
	var $key : Text
	For each ($key;$new)
		$out[$key]:=$new[$key]
	End for each 
	$out.logObject:=$new
	$out.save()
	$0:=$new
End if 