//%attributes = {}
C_TIME:C306(<>useTime)
<>useTime:=?14:00:00?
assert_displayUnitTest(cs:C1710.PermissionUnitTest.new())

$win:=Open form window:C675("Premissions")
DIALOG:C40("Premissions")
CLOSE WINDOW:C154($win)
