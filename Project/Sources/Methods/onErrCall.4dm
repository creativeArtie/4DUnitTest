//%attributes = {}
ARRAY LONGINT:C221($codesArr;0)
ARRAY TEXT:C222($intCompArr;0)
ARRAY TEXT:C222($textArr;0)

GET LAST ERROR STACK:C1015($codesArr;$intCompArr;$textArr)

var $except : cs:C1710.Error
$except:=cs:C1710.Error.new($codesArr{1};$intCompArr{1};$textArr{1})

CREATE RECORD:C68([ExceptionHolder:3])
[ExceptionHolder:3]exception:3:=$except
[ExceptionHolder:3]processId:2:=Current process:C322
SAVE RECORD:C53([ExceptionHolder:3])

log_messaage($textArr{1};Error message:K38:3;$except;Null:C1517;4)

$0:=$except