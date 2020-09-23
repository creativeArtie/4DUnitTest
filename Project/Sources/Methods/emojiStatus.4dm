//%attributes = {}
var $1,$unitTest : cs:C1710.UnitTest
var $0 : Text
$unitTest:=$1

Case of 
	: (Not:C34($1.completed))
		$0:="⏳"
	: ($1.isPass())
		$0:="✔"
	Else 
		$0:="❌"
End case 