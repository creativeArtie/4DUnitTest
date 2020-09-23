<!-- Catch an exception (no paramters)-->
## Description

Catches an exception from either thrown by 4D or by `assert_throws`.

## Parameters and Return

|Parameter|Type        |Description                                         |
|---------|------------|----------------------------------------------------|
|(return) |cs.Exception|Last Exception thrown or null if no Exception found.|

## Example

```4D
assert_try // Use if you want to capture 4D exceptions too

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



