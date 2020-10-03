//%attributes = {}

WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
assert_catch().showStackTrace()


assert_log  // ping
assert_log("Hello World!")
assert_log("This a information message";Information message:K38:1)
assert_log("This a warning message";Warning message:K38:2)
assert_log("This a error message";Error message:K38:3)


assert_try
var $object : Object
$object.hello:=6
assert_catch().showStackTrace()

assert_throws("Unchecked")
$object.hello:=8