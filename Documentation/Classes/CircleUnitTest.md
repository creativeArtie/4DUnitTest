<!-- Tests a method call circle_formula -->
## Description

Run `runCircleTest` Method to see how it work.

## Guide

This class with test circle_formula with two cases.

### CircleTest Class

Line 1: The class needs to be extends `Test`:

~~~4D
Class extends Test
~~~

Line 2-7: Create a constructor that takes in two parameters: a test value and 
a expected value:

```4D
Class constructor
	var $1 : Real
	var $2 : Real
	Super("Circle Test for: "+String($1))
	This.input:=$1
	This.expect:=$2
```

Line 8-9: this is the actual part that runs the test:

```4D
Function runTest
	This.assertEquals(This.expect;circle_formula(This.input))
```

### CircleUnitTest Class

Line 1: This class needs to be extending `UnitTest`:

```4D
Class extends UnitTest
```

Line 2-4: This loads and define the test cases:

```4D
Function loadTests
	This.pushTest(cs.CircleTest.new(0;0))
	This.pushTest(cs.CircleTest.new(4;50.26548245744))
```
