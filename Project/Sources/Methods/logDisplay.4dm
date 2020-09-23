//%attributes = {}
var $form : Object

$form:=New object:C1471
$form.log:=New collection:C1472
$form.log:=ds:C1482.TextLog.all().logObject
var $win : Integer
$win:=Open form window:C675("LogDialog")
DIALOG:C40("LogDialog";$form)
CLOSE WINDOW:C154($win)