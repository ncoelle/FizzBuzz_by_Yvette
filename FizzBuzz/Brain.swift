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

  func check(number: Int) -> Move {
    if isDivisibleByFifteen(number) {
      return .fizzBuzz
    } else if isDivisibleByFive(number) {
      return .buzz
    } else if isDivisibleByThree(number) {
      return .fizz
    } else {
      return .number
    }
  }
}
