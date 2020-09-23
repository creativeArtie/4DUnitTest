//%attributes = {"shared":true}
var $0 : Object
$0:=Null:C1517

QUERY:C277([ExceptionHolder:3];[ExceptionHolder:3]processId:2;=;Current process:C322)
If (Records in selection:C76([ExceptionHolder:3])>0)
	LAST RECORD:C200([ExceptionHolder:3])
	$0:=[ExceptionHolder:3]exception:3
	ONE RECORD SELECT:C189([ExceptionHolder:3])
	DELETE SELECTION:C66([ExceptionHolder:3])
End if 