import UIKit

protocol ChildToParent {
    func changeColor(color:UIColor)
}

class ChildViewController: UIViewController {

    var childToParent:ChildToParent?
    
    @IBAction func tapGreenButton(_ sender: Any) {
        childToParent?.changeColor(color: .green)
    }
    @IBAction func tapYellowButton(_ sender: Any) {
        childToParent?.changeColor(color: .yellow)
    }
    @IBAction func tapRedButton(_ sender: Any) {
        childToParent?.changeColor(color: .red)
    }
    
    func changeColor(color:UIColor) {
        view.backgroundColor = color
    }
}
