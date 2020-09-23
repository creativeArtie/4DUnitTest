<!-- Converts 4D errors to exceptions -->
## Description

Sets `ON ERR CALL` to method which converts the 4D errors into exceptions

## Parameters and Return

*(No parameters or returns)*

## Example

```4d
assert_try 
// ...
error = assert_catch
If (error # null)
    // error found
    error.showStackTrace()
    // ...
Else
    // no error
    // ...
End if
```
