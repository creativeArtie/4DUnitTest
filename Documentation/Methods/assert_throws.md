<!-- Throws an exception($message;$exceptions;$log) -->
## Description

Throws an exception with a message.

## Parameters and Return

|Parameter|Type        |Description                                          |
|---------|------------|-----------------------------------------------------|
|$message |Text        | The exception message (defualt: "General Exception")|
|(return) |cs.Exception| The exception thrown                                |

## Example

```4d
assert_throw("Error Found!")
```
