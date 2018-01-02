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
    game.play(move: "1")
    XCTAssertEqual(game.score, 1,
        "Score should increment on one move")
  }

  func testOnPlayTwiceScoreIncremented() {
    game.play(move: "1")
    game.play(move: "1")
    print("Score after two plays: \(game.score)")
    XCTAssertEqual(game.score, 2,
        "Score should increment by 2 after two plays")
  }

  func testIfMoveIsCorrect() {
    game.score = 2
    let result = game.play(move: "Fizz")
    XCTAssertEqual(result, true,
        "Third move must be Fizz (3 is divisible by 3")
  }
}
