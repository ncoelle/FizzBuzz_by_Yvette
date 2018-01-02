//
//  FizzBuzzTests
//
//  Copyright © 2018 Cölle Online. All rights reserved.
//

import Foundation

class Game {
  var score: Int

  init() {
    score = 0
  }

  func play(move: String) -> Bool {
    score += 1
    return true
  }
}
