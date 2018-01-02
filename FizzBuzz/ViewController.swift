import UIKit

class ViewController: UIViewController {

  var gameScore: Int?

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  func play(move: String) {
    gameScore = 1
  }
}

