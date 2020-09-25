//%attributes = {}
var $1 : cs:C1710.User
var $0 : Boolean
var $time : Time
Case of 
	: (Type:C295(<>useTime)=Is undefined:K8:13)
		$time:=Current time:C178
	: (<>useTime=?00:00:00?)
		$time:=Current time:C178
	Else 
		$time:=<>useTime
End case 
$0:=(Time:C179($1.allowStart)<=$time) & ($time<=Time:C179($1.allowEnd))