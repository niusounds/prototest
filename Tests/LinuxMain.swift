import XCTest

import prototestTests

var tests = [XCTestCaseEntry]()
tests += prototestTests.allTests()
XCTMain(tests)
