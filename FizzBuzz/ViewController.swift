import UIKit

class ViewController: UIViewController {

  var game: Game?
  var gameScore: Int? {
    didSet {
      guard let unwrappedScore = gameScore else { fatalError("gameScore not unwrapped") }
      numberButton.setTitle("\(unwrappedScore)", for: .normal)
    }
  }

  @IBOutlet weak var numberButton: UIButton!
  @IBOutlet weak var fizzButton: UIButton!
  @IBOutlet weak var buzzButton: UIButton!
  @IBOutlet weak var fizzBuzzButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()

    guard let checkedGame = game else { fatalError("Could not unwrap game in ViewController") }
    gameScore = checkedGame.score
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    if sender == numberButton {
      play(move: .number)
    } else if sender == fizzButton {
      play(move: .fizz)
    } else if sender == buzzButton {
      play(move: .buzz)
    } else if sender == fizzBuzzButton {
      play(move: .fizzBuzz)
    } else {
      fatalError("Invalid button tap detected.")
    }
  }

  func play(move: Move) {
    guard let unwrappedGame = game else {
      fatalError("Game is nil in ViewController")
    }

    let response = unwrappedGame.play(move: move)
    gameScore = response.score
  }
}

