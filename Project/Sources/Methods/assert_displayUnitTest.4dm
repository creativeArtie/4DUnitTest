//%attributes = {"shared":true}
var $1,$test : cs:C1710.UnitTest

Case of 
	: (Count parameters:C259=0)
		$test:=cs:C1710.BasicUnitTest.new()
	: (Count parameters:C259=1)
		$test:=$1
End case 
$test.loadTests()
var $process : Integer
$process:=New process:C317("unitDisplay";0;"Unit Test Display";$test)