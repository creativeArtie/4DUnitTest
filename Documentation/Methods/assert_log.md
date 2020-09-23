<!-- Logs a message ($message; $level; $details; $logs) -->
## Description

Logs a message. This is helpful to describe where the error is located.

## Parameters and Return

|Parameter|Type        |Description                                             |
|---------|------------|--------------------------------------------------------|
|$message |Text        |message to send (default: "Information message pinged.")|
|$level   |Integer     |Level of importance one of:`Error message`, `Information message`, `Warning message`|
|$details |cs.Loggable |Loggable object (ex. Exception, UnitTest)               |
|(return) |cs.LogLine  |The object that been logged                             |

## Example

```4d
assert_log("Hello World")

assert_log("Something has gone wrong."; Error message);
```
