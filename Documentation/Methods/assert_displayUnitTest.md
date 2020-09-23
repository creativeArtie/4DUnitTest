<!-- Display and Run the Test Unit ($unitTest) -->
## Description

Display a Unit Test in a dialogue

## Parameters and Return

|Parameter|Type       |Description                                         |
|---------|-----------|----------------------------------------------------|
|$unitTest|cs.UnitTest|UnitTest to use if not `BasicUnitTest`              |


## Example

```4d
var unitTest : cs.YourUnitTest
unitTest:=cs.YourUnitTest.new()
assert_displayUnitTest(unitTest)
```
