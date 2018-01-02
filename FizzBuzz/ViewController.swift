import UIKit

class ViewController: UIViewController {

  var game: Game?
  var gameScore: Int?

  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  func play(move: String) {
    guard let unwrappedGame = game else {
      fatalError("Game is nil in ViewController")
    }

    let response = unwrappedGame.play(move: move)
    gameScore = response.score
  }
}

