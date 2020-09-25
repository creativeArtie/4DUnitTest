Class extends Test
Class constructor
	Super:C1705($1)
	This:C1470.pass:=$2
Function runTest
	ASSERT:C1129(OB Is defined:C1231(This:C1470;"entity"))
	This:C1470.log("Test for: "+String:C10(<>useTime))
	var $bool : Boolean
	$bool:=isUserAllowed(This:C1470.entity)
	This:C1470.assertEquals($bool;This:C1470.pass)