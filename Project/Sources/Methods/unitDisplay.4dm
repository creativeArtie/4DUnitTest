//%attributes = {}
var $1 : cs:C1710.UnitTest
var $2 : Boolean
var $form : cs:C1710.UnitTest
$form:=$1
Case of 
	: (Count parameters:C259=2)
		$form.allow:=$1
	: (Count parameters:C259=1)
		$form.allow:=True:C214
End case 

var $win : Time
$win:=Open form window:C675("UnitTestDisplay")
DIALOG:C40("UnitTestDisplay";$1)
CLOSE WINDOW:C154
