//%attributes = {}
var $0,$1,$unit : cs:C1710.UnitTest

Case of 
	: (Count parameters:C259=0)
		$unit:=cs:C1710.BasicUnitTest.new()
	Else 
		$unit:=$1
End case 

C_COLLECTION:C1488(exceptions;logger)
exceptions:=New collection:C1472
logger:=New collection:C1472
ON ERR CALL:C155("runUnitTest")
logger:=$unit.preLogger

$unit.beforeAllTests()
var $test : cs:C1710.Test

For each ($test;$unit.tests)
	$unit.setCurrent($test)
	logger:=$test.exceptions
	$inputs:=New object:C1471
	
	$unit.beforeEachTest($test)
	$test.runTest()
	$unit.afterEachTest($test)
	
End for each 
$unit.setCurrent(Null:C1517)
logger:=$unit.postLogger
$unit.afterAllTests()

$unit.completed:=True:C214
$0:=$unit