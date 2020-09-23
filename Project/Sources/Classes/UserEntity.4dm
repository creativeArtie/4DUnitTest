Class extends Entity
Function isAllow
	var $0 : Boolean
	var $time : Time
	If (Type:C295(useTime)=Is undefined:K8:13)
		$time:=Current time:C178
	Else 
		$time:=useTime
	End if 
	$0:=(This:C1470.allowStart>=$time) & (This:C1470.allowEnd<=$time)