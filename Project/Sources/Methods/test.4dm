//%attributes = {}

WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
assert_catch().showStackTrace()


assert_log("Hello")

assert_try
var $object : Object
$object.hello:=6
assert_catch().showStackTrace()

assert_throws("Unchecked")
$object.hello:=8