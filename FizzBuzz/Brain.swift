//
//  FizzBuzzTests
//
//  Copyright © 2018 Cölle Online. All rights reserved.
//

import Foundation

class Brain {
  func isDivisibleByThree(_ number: Int) -> Bool {
    return number % 3 == 0
  }

  func isDivisibleByFive(_ number: Int) -> Bool {
    return number % 5 == 0
  }

  func isDivisibleByThreeAndFive(_ number: Int) -> Bool {
    fatalError("isDivisibleByThreeAndFive(i:) has not been implemented")
  }
}
