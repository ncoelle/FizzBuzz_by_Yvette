//
//  FizzBuzzTests
//
//  Copyright © 2018 Cölle Online. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
  let brain = Brain()

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testIsThreeDivisibleByThree() {
    let result = brain.isDivisibleByThree(3)

    XCTAssertEqual(result, true,
        "3 should be divisible by 3")
  }

  func testIsOneDivisibleByThree() {
    let result = brain.isDivisibleByThree(1)

    XCTAssertEqual(result, false,
        "1 should not be divisible by 3")
  }

  func testIsFiveDivisibleByFive() {
    let result = brain.isDivisibleByFive(5)

    XCTAssertEqual(result, true,
        "5 should be divisible by 5")
  }

  func testIsOneDivisibleByFive() {
    let result = brain.isDivisibleByFive(1)

    XCTAssertEqual(result, false,
        "1 must not be divisible by 5")
  }
}
