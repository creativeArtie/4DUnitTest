C_TEXT:C284($name)
$name:=OB Class:C1730(Form:C1466).name

Case of 
	: (Not:C34(OBJECT Get enabled:C1079(*;"b_run")))
		log_messaage("Test Reviewed: "+$name;Information message:K38:1;Form:C1466)
	: (Form:C1466.isPass())
		log_messaage("Test Passed: "+$name;Information message:K38:1;Form:C1466)
	Else 
		log_messaage("Test Failed: "+$name;Error message:K38:3;Form:C1466)
End case 
ACCEPT:C269