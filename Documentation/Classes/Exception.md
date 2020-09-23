<!-- An exception thrown by assert_throws -->
## Description

An exception thrown by `assert_throws`.

## Properties

|  Name    | Type     | Description                                                   |
|----------|----------|---------------------------------------------------------------|
|line      |LongInt   |Line number of call to the method (from `Get call chain`)      |
|name      |Text      |Name of the called method (from `Get call chain`)              |
|database  |Text      |Name of the database calling the method (from `Get call chain`)|
|type      |Text      |Type of the method (from `Get call chain`)                     |
|messsage  |Text      |Message of the exception (provided by user)                    |
|timestamp |Text      |From `Timestamp`                                               |
|process   |Text      |From `Current process name`                                    |
|stacktrace|Collection|From `Get Call Chain`                                          |

## Method `printStackTrace`

Display a stack trace dialog.

## Get Methods

- `getFullName`: Gets `This.database`, and `This.name`
- `getLocation`: Gets `This.database`, `This.name`, and `This.line`
- `getDetailed`: Gets `This.database`, `This.name`, `This.line`, and `This.message`


## Example

Throws an exception and added to a different log.

```4d
var $moreLog: Collection
$moreLog:=New collection
// ...
var $exception : cs.Exception
$exception:=assert_throws("Hello World")
$moreLog.push($exception)
```
A more examples see [assert_throws](../Methods/assert_throws.md).
