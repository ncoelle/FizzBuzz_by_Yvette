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
    game.score = 1
    let _ = game.play(move: "2")
    XCTAssertEqual(game.score, 2,
        "Score should increment by 2 after two moves")
  }

  func testIfFizzMoveIsCorrect() {
    game.score = 2
    let result = game.play(move: "Fizz")
    XCTAssertEqual(result.right, true,
        "Correct move not detected: Third move must be Fizz (3 is divisible by 3")
  }

  func testIfFizzMoveIsIncorrect() {
    game.score = 1
    let result = game.play(move: "Fizz")
    XCTAssertEqual(result.right, false,
        "Wrong move not detected: Second move must be '2' not 'Fizz'")
  }

  func testIfBuzzMoveIsCorrect() {
    game.score = 4
    let result = game.play(move: "Buzz")
    XCTAssertEqual(result.right, true,
        "Correct move not detected: Third move must be Fizz (5 is divisible by 5")
  }

  func testIfBuzzMoveIsIncorrect() {
    game.score = 1
    let result = game.play(move: "Buzz")
    XCTAssertEqual(result.right, false,
        "Wrong move not detected: Second move must be '2' not 'Buzz'")
  }

  func testIfFizzBuzzMoveIsCorrect() {
    game.score = 14
    let result = game.play(move: "FizzBuzz")
    XCTAssertEqual(result.right, true,
        "Correct move not detected: Must be FizzBuzz (15 is divisible by 15")
  }

  func testIfFizzBuzzMoveIsIncorrect() {
    game.score = 1
    let result = game.play(move: "FizzBuzz")
    XCTAssertEqual(result.right, false,
        "Wrong move not detected: Second move must be '2' not 'FizzBuzz'")
  }

  func testIfNumberMoveIsCorrect() {
    game.score = 13
    let result = game.play(move: "14")
    XCTAssertEqual(result.right, true,
        "Correct move not detected: Must be '14' (14 is not divisible by any FizzBuzz number")
  }

  func testIfNumberMoveIsIncorrect() {
    game.score = 1
    let result = game.play(move: "14")
    XCTAssertEqual(result.right, false,
        "Wrong move not detected: Second move must be '2' not '14'")
  }

  func testIfMoveWrongScoreNotIncremented() {
    game.score = 1
    let _ = game.play(move: "Fizz")
    XCTAssertEqual(game.score, 1,
        "After a wrong move the score must not be incremented")
  }

  func testPlayShouldReturnIfMoveIsCorrect() {
    let response = game.play(move: "1")
    XCTAssertNotNil(response.right)
  }

  func testPlayShouldReturnNewScore() {
    let response = game.play(move: "1")
    XCTAssertNotNil(response.score)
  }
}
