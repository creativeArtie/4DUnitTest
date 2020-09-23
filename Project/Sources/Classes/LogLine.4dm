Class extends Loggable
Class constructor
	var $2,$level,$3,$from : Integer
	var $1 : Text
	var $4 : cs:C1710.Loggable
	Case of 
		: (Count parameters:C259=1)
			Super:C1705($1)
			This:C1470.importance:=Information message:K38:1
		: (Count parameters:C259=2)
			ASSERT:C1129($2<3;"Logger type must be less then 3")
			Super:C1705($1)
			This:C1470.importance:=$2
		: (Count parameters:C259=3)
			Super:C1705($1;$3)
			This:C1470.importance:=$2
		: (Count parameters:C259=4)
			Super:C1705($1;$3)
			This:C1470.importance:=$2
			This:C1470.details:=$4
	End case 