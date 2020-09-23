<!-- A Test Case -->
## Description

Runs a single test. This is expected to be extended by the user.

## Properties

|  Name    | Type  | Description                  |
|----------|-------|------------------------------|
|name      |Text   |Name of the Test              |
|logLines  |Text   |A collection of `cs.LogLine`  |
|exceptions|Text   |A collection of `cs.Exception`|

## Assert Methods

Do assert test, these are 

|Name        |Parameters<sup>1</sup>|Description                           |
|------------|----------------------|--------------------------------------|
|assertEquals|Variant, Variant      |assert that the two values are equal  |
|assertFail  |(none)                |throws an exception without logging it|
|assertTrue  |Boolean               |assert that an expression is true     |
|assertFalse |Boolean               |assert that an expression is false    |

<sup>1</sup>This excludes the last parameter message, which is a text that 
replaces $1, $2 with the parameters $1 and $2 when applicable.

## Other Methods

|Name                |Description                                             |
|--------------------|--------------------------------------------------------|
|runTest()           |Runs the test **Must be overrided in subclasses.**      |
|log($message, $type)|like `assert_log` but without logging into the log table|
|isPass()            |Displace if this test doesn't have any exceptions       |
|getName()           |Gets the name of the method                             |