http://iosunittesting.com/
http://nshipster.com/xctestcase/


Shortcuts: splat-R to build and run executable; splat-U to build and run tests

Xcode unit tests are contained within an XCTestCase subclass.
By convention, each XCTestCase subclass encapsulates a particular set of concerns, such as a feature, use case, or flow of an application.

Each method in a test case with a name that begins with "test" is recognized as a test, and will evaluate any assertions within that function to determine whether it passed or failed.

For example, the function testOnePlusOneEqualsTwo() will pass if 1 + 1 is equal to 2:

```Swift
func testOnePlusOneEqualsTwo() {
    /*
    the first and second parameters are compared. If the test fails, the output is the third parameter
    */
    XCTAssertEqual(1 + 1, 2, "one plus one should equal two")
}
```

Although all the XCTest assertions ultimately boil down to XCTAssert(_:_:), for readability it is better to use the most specific test function available, e.g., even though XCTAssertTrue is equivalent to XCTAssert, if you are testing a Bool, XCTAssertTrue is clearer about intent.


Performance Testing:

put code inside a measureBlock() function. The measured block will be run 10 times, and the test's output will show the average execution time and the individual times and the SD.



// TUTORIAL 1:
https://medium.com/@ynzc/part-1-installing-xcode-and-starting-a-project-7af43f48f686#.7lpuacq2q



BrainTests.swift:
-----------------
```Swift

import XCTest
@testable import FizzBuzz // need to import the project/module.

... setup and teardown methods ...

class BrainTests: XCTestCase {

    func testIsDivisibleByThree() {
        let brain = Brain()
        let result = brain.isDivisibleByThree(3)
        XCTAssertTrue(result, "isDivisibleByThree(3) should be true")
    }

    func testIsNotDivisibleByThree() {
        let brain = Brain() // note we have duplicated code here, part of the refactor phase of TDD should have us move duplicated code (in this case declare brain = Brain() in the class definition instead of each function definition)
        let result = brain.isDivisibleByThree(1)
        XCTAssertFalse(result, "isDivisibleByThree(1) should be false")
    }

}
    
```

Brain.swift:
------------
```Swift

class Brain { // in the tutorial this is declared as being a subclass of NSObject

    func isDivisibleByThree(number: Int) -> Bool {
        return true
    }

}

```
