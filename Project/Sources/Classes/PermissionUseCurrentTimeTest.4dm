Class extends Test
Function runTest
	ASSERT:C1129(OB Is defined:C1231(This:C1470;"entity"))  // assert that there is something to test
	ASSERT:C1129(Type:C295(useTime)=Is undefined:K8:13;"Use Time is not undefined.")
	This:C1470.log("Current time is: "+Current time:C178)
	This:C1470.log("This customer is: "+This:C1470.entity.isAllowed())
	