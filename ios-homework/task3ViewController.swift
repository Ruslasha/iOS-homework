//ParentViewController.Swift
import UIKit

protocol CDelegate: AnyObject {
    func updateColor(color: UIColor)
}

class ParentViewController: UIViewController {
    
    var qColor: UIColor = .white
    weak var qDelegate: QDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        qDelegate?.updateColor(color: qColor)
    }
    @IBAction func DidTapGreenButton(_ sender: Any) {
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChildViewController") as! ChildViewController
//        vc.cDelegate = self
//        vc.cColor = .green
//        vc.viewDidLoad()
        qDelegate?.updateColor(color: .green)

    }
}
extension ParentViewController: CDelegate {
    func updateColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
    
