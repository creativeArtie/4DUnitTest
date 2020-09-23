Class extends UnitTest
Function loadTests
	This:C1470.pushTest(cs:C1710.PermissionUseCurrentTimeTest.new())
	This:C1470.pushTest(cs:C1710.PermssionBasicTest.new("before";False:C215))
	This:C1470.pushTest(cs:C1710.PermssionBasicTest.new("at min hour";True:C214))
	This:C1470.pushTest(cs:C1710.PermssionBasicTest.new("in range";True:C214))
	This:C1470.pushTest(cs:C1710.PermssionBasicTest.new("at max hour";True:C214))
	This:C1470.pushTest(cs:C1710.PermssionBasicTest.new("after";False:C215))
Function beforeAllTests
	This:C1470.log("Backup useTime")
	This:C1470.backupUseTime:=useTime
	
	This:C1470.log("Create a temporary user.")
	This:C1470.entity:=ds:C1482.User.new()
	This:C1470.entity.allowStart:=?08:00:00?
	This:C1470.entity.allowEnd:=?12:00:00?
	
	This:C1470.log("This helps how to set useTime")
	This:C1470.counter:=0
	
Function beforeEachTest
	Case of 
		: (This:C1470.counter=0)
			This:C1470.log("Case 1: useTime is not defined.")
			CLEAR VARIABLE:C89(useTime)
		: (This:C1470.counter=1)
			var useTime : Time
			useTime:=?07:00:00?
		: (This:C1470.counter=2)
			useTime:=?08:00:00?
		: (This:C1470.counter=3)
			useTime:=?09:00:00?
		: (This:C1470.counter=4)
			useTime:=?12:00:00?
		: (This:C1470.couner=5)
			useTime:=?21:00:00?
	End case 
	$1.entity:=This:C1470.entity
	
	
Function afterEachTest
	This:C1470.log("Increase the counter")
	This:C1470.counter:=This:C1470.counter+1
	
Function afterAllTests
	This:C1470.log("Reset useTime.")
	useTime:=This:C1470.backupUseTime