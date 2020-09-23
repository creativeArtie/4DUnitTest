Class extends UnitTest
Class constructor
	var $1 : Boolean
	Super:C1705()
	This:C1470.runExcept:=False:C215
	Case of 
		: (Count parameters:C259=1)
			This:C1470.runExcept:=$1
	End case 
	
Function loadTests
	This:C1470.pushTest(cs:C1710.BasicTest.new(This:C1470.runExcept;1))
	This:C1470.pushTest(cs:C1710.BasicTest.new(This:C1470.runExcept;2))
	
Function beforeAllTests
	Super:C1706.log("Before All Tests")
	If (This:C1470.runExcept)
		This:C1470.assertEquals(0;1;"AssertEquals")
		This:C1470.assertFail("assert fail")
		This:C1470.assertFalse(True:C214)
		This:C1470.assertTrue(False:C215)
		var $obj : Object
		$obj.a:=2
	End if 
	This:C1470.testCount:=1
	
Function beforeEachTest
	Super:C1706.log("Before each test"+String:C10(This:C1470.testCount))
	var $1 : cs:C1710.Test
	If (This:C1470.runExcept)
		This:C1470.assertEquals(0;1;"AssertEquals")
		This:C1470.assertFail("assert fail")
		This:C1470.assertFalse(True:C214)
		This:C1470.assertTrue(False:C215)
		var $obj : Object
		$obj.a:=2
	End if 
	
Function afterEachTest
	Super:C1706.log("After each test"+String:C10(This:C1470.testCount))
	var $1 : cs:C1710.Test
	If (This:C1470.runExcept)
		This:C1470.assertEquals(0;1;"AssertEquals")
		This:C1470.assertFail("assert fail")
		This:C1470.assertFalse(True:C214)
		This:C1470.assertTrue(False:C215)
		var $obj : Object
		$obj.a:=2
	End if 
	This:C1470.testCount:=This:C1470.testCount+1
	
Function afterAllTests
	Super:C1706.log("After All Tests")
	If (This:C1470.runExcept)
		This:C1470.assertEquals(0;1;"AssertEquals")
		This:C1470.assertFail("assert fail")
		This:C1470.assertFalse(True:C214)
		This:C1470.assertTrue(False:C215)
		var $obj : Object
		$obj.a:=2
	End if 