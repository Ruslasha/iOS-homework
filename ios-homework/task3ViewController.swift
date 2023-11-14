import UIKit

class ParentViewController: UIViewController, ChildToParent {
    func changeColor(color: UIColor) {
        view.backgroundColor = color
    }
    

    @IBOutlet var childView: UIView!
    var childViewController: ChildViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "EmbedSegue" {
            childViewController = segue.destination as? ChildViewController
            childViewController!.childToParent = self
        }
    }
    
    @IBAction func tapGreenButton(_ sender: Any) {
        childViewController?.changeColor(color: .green)
    }
    @IBAction func tapYellowButton(_ sender: Any) {
        childViewController?.changeColor(color: .yellow)
    }
    
    @IBAction func tapRedButton(_ sender: Any) {
        childViewController?.changeColor(color: .red)
    }

}
