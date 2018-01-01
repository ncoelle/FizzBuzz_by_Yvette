//
//  FizzBuzzTests
//
//  Copyright © 2018 Cölle Online. All rights reserved.
//

import Foundation

class Brain {
  func isDivisibleByThree(_ number: Int) -> Bool {
    return isDivisibleBy(3, number: number)
  }

  func isDivisibleByFive(_ number: Int) -> Bool {
    return isDivisibleBy(5, number: number)
  }

  func isDivisibleByFifteen(_ number: Int) -> Bool {
    return isDivisibleBy(15, number: number)
  }

  private func isDivisibleBy(_ divisor: Int, number: Int) -> Bool {
    return number % divisor == 0
  }
}
