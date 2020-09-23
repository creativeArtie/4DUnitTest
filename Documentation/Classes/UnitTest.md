<!-- A Test with several cases -->
## Description

A group of related tests.

# Properties

|  Name    |   Type   | Description                                                        |
|----------|----------|--------------------------------------------------------------------|
|name      |Text      |Name of the Test                                                    |
|test      |Collection|A collection of `cs.Test` either ready to test or stores the results|
|exceptions|Collection|A collection of `cs.Exception` found                                |
|preLogger |Collection|A collection of `cs.LogLine` from setup                             |
|preLogger |Collection|A collection of `cs.LogLine` from cleanup                           |
|completed |Boolean   |`true` if the test is completed                                     |

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

## Order of Method call

1. `beforeAllTests()`: Setup method for all test in this unit test. Such as:
    - Create test table records
    - load file
2. `beforeEachTest($test)`: Setup method for the test each test. Such as:
    - set interprocess variables
    - set process variables
3. `runTest()`: Runs the test case. This is where you run the main test.
4. `afterEachTest($test)`: Cleans up the code for then next test
5. `afterAllTests()`: Cleanup the test unit. Such as:
    - delete test table records
    - unload files

## Loading and Unloading tests

|Name             |Description                                                |
|-----------------|-----------------------------------------------------------|
|loadTests()      |Loads or reload tests **Must be overrided in subclasses.** |
|pushTests($test) |Adds a test case                                           |
|resetTests()     |Clear and reload the tests.                                |
|testsStatus()    |Displace test status: 0 = pass, -1 = fail, -2 = not run yet|
|setCurrent($test)|Sets the current test **Internal Use only**                |

## Other Methods 

|Name                |Description                                             |
|--------------------|--------------------------------------------------------|
|log($message, $type)|like `assert_log` but without logging into the log table|
|isPass()            |Displace if this test doesn't have any exceptions       |
|getName()           |Gets the name of the method                             |


## Example

See [BasicUnitTest](BasicUnitTest.md), [CircleUnitTest](CircleUnitTest.md), and
[PremissionUnitTest](PremissionUnitTest.md)
