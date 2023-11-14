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

    @IBAction func button_Container(sender: AnyObject) {
        childViewController?.changeColor(color: .green)
    }
    
    @IBAction func tap(_ sender: Any) {
        childViewController?.changeColor(color: .green)
    }
}
