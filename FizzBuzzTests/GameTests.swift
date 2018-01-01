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
    game.play()
    XCTAssertEqual(game.score, 1,
        "Score should increment on one move")
  }
}
