import UIKit

protocol ChildToParent {
    func changeColor(color:UIColor)
}

class ChildViewController: UIViewController {

    @IBOutlet var labelContainer: UILabel!
    var childToParent:ChildToParent?

    @IBAction func button_Master(sender: AnyObject) {
        childToParent?.changeColor(color: .green)
    }

    func changeColor(color:UIColor) {
        view.backgroundColor = color
    }
}
