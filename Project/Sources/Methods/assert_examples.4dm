//%attributes = {}
clearLog
assert_displayLog
var $process : Integer
$process:=New process:C317("test";0;"Test")
$process:=New process:C317("assert_displayUnitTest";0)
$process:=New process:C317("runTestWIthExceptions";0)
$process:=New process:C317("runCircleTest";0)
$process:=New process:C317("runPremissionsTest";0)