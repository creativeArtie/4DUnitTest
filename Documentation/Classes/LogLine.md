<!-- A log line object -->

## Description

A line in log.

## Properties

|  Name    | Type  | Description                                                   |
|----------|-------|---------------------------------------------------------------|
|line      |LongInt|Line number of call to the method (from `Get call chain`)      |
|name      |Text   |Name of the called method (from `Get call chain`)              |
|database  |Text   |Name of the database calling the method (from `Get call chain`)|
|type      |Text   |Type of the method (from `Get call chain`)                     |
|messsage  |Text   |Message of the log (provided by user)                          |
|importance|LongInt|Level of importance one of: `Error message`, `Information message`, or `Warning message`|
|timestamp |Text   |From `Timestamp`                                               |
|process   |Text   |From `Current process name`                                    |

## Get Methods

- `getFullName`: Gets `This.database`, and `This.name`
- `getLocation`: Gets `This.database`, `This.name`, and `This.line`
- `getDetailed`: Gets `This.database`, `This.name`, `This.line`, and `This.message`

## Example

Throws an log line and added to a different log.

```4d
var $moreLog: Collection
$moreLog:=New collection
// ...
var $line : cs.LogLine
$line:=assert_log("Error")
$moreLog.push($line)
```
A more examples see [assert_log](assert_log.md).
