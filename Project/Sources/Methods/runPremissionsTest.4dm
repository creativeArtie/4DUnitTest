//%attributes = {}
var useTime : Time
useTime:=?14:00:00?
ALERT:C41("Before unit test useTime: "+String:C10(useTime))
assert_displayUnitTest(cs:C1710.PermissionUnitTest.new())
ALERT:C41("After unit test useTime: "+String:C10(useTime))
