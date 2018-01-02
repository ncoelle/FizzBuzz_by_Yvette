//
//  FizzBuzzTests
//
//  Copyright © 2018 Cölle Online. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

  let game = Game()

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
  }

  func testGameStartsAtZero() {
    XCTAssertEqual(game.score, 0,
        "Game should start with a score of 0")
  }

  func testOnPlayScoreIncremented() {
    let _ = game.play(move: "1")
    XCTAssertEqual(game.score, 1,
        "Score should increment on one move")
  }

  func testOnPlayTwiceScoreIncremented() {
    let _ = game.play(move: "1")
    let _ = game.play(move: "1")
    XCTAssertEqual(game.score, 2,
        "Score should increment by 2 after two moves")
  }

  func testIfMoveIsCorrect() {
    game.score = 2
    let result = game.play(move: "Fizz")
    XCTAssertEqual(result, true,
        "Third move must be Fizz (3 is divisible by 3")
  }

  func testIfMoveIsIncorrect() {
    game.score = 1
    let result = game.play(move: "Fizz")
    XCTAssertEqual(result, false,
        "Wrong move not detected: Second move must be '2' not 'Fizz'")
  }
}
