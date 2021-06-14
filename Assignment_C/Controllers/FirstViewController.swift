//
//  ViewController.swift
//  Assignment_C
//
//  Created by Akhil on 13/06/21.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var proceedToEMISelectionButton: UIButton!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var imageFirstView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    @IBAction func proceedToEMIButtonPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "SVC") as! SecondViewController
        present(vc, animated: true, completion: nil)
        
    }
    
    func setUpUI(){
        proceedToEMISelectionButton.clipsToBounds = true
        proceedToEMISelectionButton.layer.cornerRadius = 20
        proceedToEMISelectionButton.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
        
        firstView.roundCorners([.topLeft, .topRight], radius: 20)
        imageFirstView.roundCorners([.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 20)
    }
    
}
