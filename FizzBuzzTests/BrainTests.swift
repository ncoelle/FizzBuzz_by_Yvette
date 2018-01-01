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

  func testIsFifteenDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(15)

    XCTAssertEqual(result, true,
        "15 should be divisible by 15")
  }

  func testIsThreeDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(3)

    XCTAssertEqual(result, false,
        "3 must not be divisible by 15")
  }

  func testIsFiveDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(3)

    XCTAssertEqual(result, false,
        "5 must not be divisible by 15")
  }

  func testSayFizz() {
    let result = brain.check(number: 3)
    XCTAssertEqual(result, "Fizz",
        "Divisible by 3 should return 'Fizz'")
  }

  func testSayBuzz() {
    let result = brain.check(number: 5)
    XCTAssertEqual(result, "Buzz",
        "Divisible by 5 should return 'Buzz'")
  }

  func testSayFizzBuzz() {
    let result = brain.check(number: 15)
    XCTAssertEqual(result, "FizzBuzz",
        "Divisible by 15 should return 'FizzBuzz'")
  }
}
