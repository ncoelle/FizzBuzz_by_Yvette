//
//  FizzBuzzTests
//
//  Copyright © 2018 Cölle Online. All rights reserved.
//

import Foundation

class Game {
  let brain: Brain
  var score: Int

  init() {
    brain = Brain()
    score = 0
  }

  func play(move: String) -> Bool {

    let result = brain.check(number: score + 1)

    if result == move {
      score += 1
      return true
    } else {
      return false
    }
  }
}
