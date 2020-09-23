Class extends Test
Class constructor
	var $1 : Real
	var $2 : Real
	Super:C1705("Circle Test for: "+String:C10($1))
	This:C1470.input:=$1
	This:C1470.expect:=$2
Function runTest
	This:C1470.assertEquals(This:C1470.expect;circle_formula(This:C1470.input))
	