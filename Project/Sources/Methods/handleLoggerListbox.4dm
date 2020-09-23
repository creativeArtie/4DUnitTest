//%attributes = {}
var $1,$object : Pointer
var $2,$log : Collection
var $3,$forced,$load : Boolean

$object:=$1
$log:=$2
$forced:=False:C215
Case of 
	: (Count parameters:C259=1)
	: (Count parameters:C259=2)
	: (Count parameters:C259=3)
		$forced:=$3
End case 

var $show : cs:C1710.Loggable
$load:=False:C215
Case of 
	: ((Form event code:C388=On Load:K2:1))
		$load:=$log#Null:C1517
	: (Form event code:C388=On Bound Variable Change:K2:52)
		$load:=$log#Null:C1517
	: (Form event code:C388=On Data Change:K2:15)
		$load:=True:C214
	: ((Form event code:C388=On Selection Change:K2:29) | (Form event code:C388=On Clicked:K2:4))
		$found:=OBJECT Get pointer:C1124(Object named:K67:5;FORM Event:C1606.objectName)
		If ($object=$found)
			var $rowNum : Integer
			$rowNum:=$object->
			If ($rowNum>0)
				$show:=$log[$rowNum-1]
			End if 
		End if 
End case 

If ($log=Null:C1517)
	LISTBOX DELETE ROWS:C914($object->;1;LISTBOX Get number of rows:C915($object->))
End if 

If (($load | $forced) & ($log#Null:C1517))
	ARRAY TEXT:C222($arrColNames;0)
	ARRAY TEXT:C222($arrHeaderNames;0)
	ARRAY POINTER:C280($arrColVars;0)
	ARRAY POINTER:C280($arrHeaderVars;0)
	ARRAY BOOLEAN:C223($arrColsVisible;0)
	ARRAY POINTER:C280(arrStyles;0)
	LISTBOX GET ARRAYS:C832($object->;$arrColNames;$arrHeaderNames;$arrColVars;$arrHeaderVars;\
		$arrColsVisible;arrStyles)
	
	var $timeColPtr,$colProcessIdPtr,$colProcessNamePtr,$locationColPtr,$typeColPtr,$messageColPtr : Pointer
	$typeColPtr:=$arrColVars{1}
	$timeColPtr:=$arrColVars{2}
	$colProcessIdPtr:=$arrColVars{3}
	$colProcessNamePtr:=$arrColVars{4}
	$locationColPtr:=$arrColVars{5}
	$messageColPtr:=$arrColVars{6}
	
	ARRAY TEXT:C222($locationColPtr->;0)
	ARRAY TEXT:C222($typeColPtr->;0)
	ARRAY TEXT:C222($messageColPtr->;0)
	For each ($row;$log)
		APPEND TO ARRAY:C911($timeColPtr->;$row.timestamp)
		APPEND TO ARRAY:C911($colProcessIdPtr->;$row.processId)
		APPEND TO ARRAY:C911($colProcessNamePtr->;$row.processName)
		APPEND TO ARRAY:C911($locationColPtr->;$row.getLocation())
		
		var $type : Text
		Case of 
			: ($row.importance=Information message:K38:1)
				$type:="ℹ"
			: ($row.importance=Warning message:K38:2)
				$type:="⚠"
			: ($row.importance=Error message:K38:3)
				$type:="❌"
		End case 
		APPEND TO ARRAY:C911($typeColPtr->;$type)
		APPEND TO ARRAY:C911($messageColPtr->;$row.message)
	End for each 
	REDRAW:C174($object->)
	
	var $i : Integer
	$i:=1
	For each ($row;$log)
		Case of 
			: ($row.importance=Information message:K38:1)
				LISTBOX SET ROW COLOR:C1270($object->;$i;"white";lk background color:K53:25)
			: ($row.importance=Warning message:K38:2)
				LISTBOX SET ROW COLOR:C1270($object->;$i;"pink";lk background color:K53:25)
			: ($row.importance=Error message:K38:3)
				LISTBOX SET ROW COLOR:C1270($object->;$i;"sandybrown";lk background color:K53:25)
		End case 
		$i:=$i+1
	End for each 
End if 

If ($show#Null:C1517)
	var $displaying : cs:C1710.Loggable
	$displaying:=$show.details
	Case of 
		: (OB Instance of:C1731($displaying;cs:C1710.Exception))
			$displaying.showStackTrace()
		: (OB Instance of:C1731($displaying;cs:C1710.UnitTest))
			unitDisplay($displaying;False:C215)
	End case 
End if 