<!-- Type your summary here -->
<!-- Tests a method call circle_formula -->
## Description

Run `reunPremissionsTest` Method to see how it work.

## Guide

This class with test a process variable and a entity.

### `PermissionUseCurrentTimeTest`

This class checks if the test is setup properly and then log the current time and answer:

```4D
Class extends Test
Function runTest
	ASSERT(OB Is defined(This;"entity"))  // assert that there is something to test
	ASSERT(Type(useTime)=Is undefined;"Use Time is not undefined.")
	This.log("Current time is: "+Current time)
	This.log("This customer is: "+This.entity.isAllowed())
```

### `PermissionBasicTest`

This class checks if the test is setup properly and test if the user is allow or not:

```4D
Class extends Test
Class constructor
	Super($1)
	This.pass:=$2
Function runTest
	ASSERT(OB Is defined(This;"entity"))
	This.log("Test for: "+String(useTime))
	If (This.pass)
		This.assertTrue(This.entity.isAllowed())
	Else 
		This.assertFalse(This.entity.isAllowed())
	End if 
```

### Main Class

The load method setup the tests:

```4D
Function loadTests
	This.pushTest(cs.PermissionUseCurrentTimeTest.new())
	This.pushTest(cs.PermssionBasicTest.new("before";False))
	This.pushTest(cs.PermssionBasicTest.new("at min hour";True))
	This.pushTest(cs.PermssionBasicTest.new("in range";True))
	This.pushTest(cs.PermssionBasicTest.new("at max hour";True))
	This.pushTest(cs.PermssionBasicTest.new("after";False))
```

The beforeAllTests does three things:

1. backup the useTime so it can be reset later
2. Create a temporary user.
3. counter for tests

```4D
Function beforeAllTests
	This.log("Backup useTime") // (1)
	This.backupUseTime:=useTime 
	
	This.log("Create a temporary user.") // (2)
	This.entity:=ds.User.new() 
	This.entity.allowStart:=?08:00:00?
	This.entity.allowEnd:=?12:00:00?
	
	// test counter
	This.counter:=0 // (3)
```

The beforeEachTests setup the environment to do the tests:

```4D
Function beforeEachTest
	Case of 
		: (This.counter=0)
			This.log("Case 1: useTime is not defined.")
			CLEAR VARIABLE(useTime)
		: (This.counter=1)
			var useTime : Time
			useTime:=?07:00:00?
		: (This.counter=2)
			useTime:=?08:00:00?
		: (This.counter=3)
			useTime:=?09:00:00?
		: (This.counter=4)
			useTime:=?12:00:00?
		: (This.couner=5)
			useTime:=?21:00:00?
	End case 
	$1.entity:=This.entity
```

The afterEachTest increase the test counter:

```4D
Function afterEachTest
	This.counter:=This.counter+1
```

The afterAllTests reset the `useTime` variable to is original value:

```4D
Function afterAllTests
	This.log("Reset useTime.")
	useTime:=This.backupUseTime
```

