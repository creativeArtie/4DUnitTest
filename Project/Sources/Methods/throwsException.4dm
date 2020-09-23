//%attributes = {}
var $0 : cs:C1710.Exception
var $1,$message : Text
var $2,$3,$exceptions,$log : Collection
var $4,$from : Integer

$from:=4

Case of 
	: (Count parameters:C259=0)
		$message:="General Exception"
	: (Count parameters:C259=1)
		$message:=$1
	: (Count parameters:C259=2)
		$message:=$1
		$exceptions:=$2
	: (Count parameters:C259=3)
		$message:=$1
		$exceptions:=$2
		$log:=$3
	: (Count parameters:C259=4)
		$message:=$1
		$exceptions:=$2
		$log:=$3
		$from:=$4
End case 

var $except : cs:C1710.Exception
$except:=cs:C1710.Exception.new($message;$from-1)

var $name : Text
$name:=Current process name:C1392

If ($exceptions=Null:C1517)
	CREATE RECORD:C68([ExceptionHolder:3])
	[ExceptionHolder:3]exception:3:=$except
	[ExceptionHolder:3]processId:2:=Current process:C322
	SAVE RECORD:C53([ExceptionHolder:3])
Else 
	$exceptions.push($except)
End if 

If ($log=Null:C1517)
	log_messaage($message;Error message:K38:3;$except;Null:C1517;$from)
Else 
	log_messaage($message;Error message:K38:3;$except;$log;$from)
End if 
$0:=$except