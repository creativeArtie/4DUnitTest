//%attributes = {}
While (True:C214)
	DELAY PROCESS:C323(Current process:C322;60)
	var $id : Integer
	$list:=ds:C1482.ExceptionHolder.all()
	For each ($id;$list.processId)
		If (Process state:C330($id)<0)
			var $exceptions : 4D:C1709.EntitySelection
			$exceptions:=ds:C1482.ExceptionHolder.query("processId = "+String:C10($id))
			For each ($exception;$exceptions.exception)
				log_messaage("Exception not handled:"+$exception.message;Warning message:K38:2;$exception)
			End for each 
			$exceptions.drop()
		End if 
	End for each 
End while 