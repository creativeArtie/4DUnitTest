Class extends Test
Class constructor
	Super:C1705()
	var $1 : Boolean
	var $2 : Real
	This:C1470.runExcepts:=False:C215
	This:C1470.testCount:=$2
	If (Count parameters:C259=1)
		This:C1470.runExcepts:=$1
	End if 
Function runTest
	Super:C1706.log("Running Test"+String:C10(This:C1470.testCount))
	Super:C1706.assertEquals(OB Class:C1730(This:C1470).name;"BasicTest")
	If (This:C1470.runExcepts)
		This:C1470.assertEquals(0;1;"AssertEquals")
		This:C1470.assertFail("assert fail")
		This:C1470.assertFalse(True:C214)
		This:C1470.assertTrue(False:C215)
		var $obj : Object
		$obj.a:=2
	End if 