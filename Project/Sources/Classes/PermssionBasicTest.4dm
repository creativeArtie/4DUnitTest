Class extends Test
Class constructor
	Super:C1705($1)
	This:C1470.pass:=$2
Function runTest
	ASSERT:C1129(OB Is defined:C1231(This:C1470;"entity"))
	This:C1470.log("Test for: "+String:C10(useTime))
	If (This:C1470.pass)
		This:C1470.assertTrue(This:C1470.entity.isAllowed())
	Else 
		This:C1470.assertFalse(This:C1470.entity.isAllowed())
	End if 