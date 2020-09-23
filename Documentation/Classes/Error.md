<!-- An exception thrown by 4D through try_assert -->
## Description

An exception thrown by 4D through try_assert. This extends Exception

## Properties

|  Name    | Type     | Description                                                   |
|----------|----------|---------------------------------------------------------------|
|line      |LongInt   |Line number of call to the method (from `Get call chain`)      |
|name      |Text      |Name of the called method (from `Get call chain`)              |
|database  |Text      |Name of the database calling the method (from `Get call chain`)|
|type      |Text      |Type of the method (from `Get call chain`)                     |
|messsage  |Text      |Text of error (from `GET LAST ERROR STACK`)                    |
|errorCode |Integer   |Error number (from `GET LAST ERROR STACK`)                     |
|code      |Text      |Internal component code (from `GET LAST ERROR STACK`)          |
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

see [assert_try](../Methods/assert_try.md).
