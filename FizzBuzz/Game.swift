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
    score += 1

    let result = brain.check(number: score)

    if result == move {
      return true
    } else {
      return false
    }
  }
}
