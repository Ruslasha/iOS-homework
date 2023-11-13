
//  ChildViewController.swift
import UIKit

protocol QDelegate: AnyObject {
    func updateColor(color: UIColor)
}

class ChildViewController: UIViewController {
    
    var cColor: UIColor = .blue
    weak var cDelegate: CDelegate?
    override func viewDidLoad() {
            super.viewDidLoad()
//        cDelegate?.updateColor(color: cColor)
        }
        
    @IBAction func DidTapGreenButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ParentViewController") as! ParentViewController
        vc.qDelegate = self
        vc.qColor = .green
        vc.viewDidLoad()

    }
    }



extension ChildViewController: QDelegate {
    func updateColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
    
