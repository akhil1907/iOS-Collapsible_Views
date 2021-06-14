//
//  ThirdViewController.swift
//  Assignment_C
//
//  Created by Akhil on 13/06/21.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController{
    @IBOutlet weak var firstViewTVC: UIView!
    @IBOutlet weak var secondViewTVC: UIView!
    @IBOutlet weak var thirdViewTVC: UIView!
    @IBOutlet weak var oneClickKYCButton: UIButton!
    @IBOutlet weak var hdfcImage: UIImageView!
    @IBOutlet weak var changeAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(handleTap1(sender:)))
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(handleTap2(sender:)))
        
        firstViewTVC.addGestureRecognizer(tapGesture1)
        secondViewTVC.addGestureRecognizer(tapGesture2)
    }
    
    @objc func handleTap1(sender: UITapGestureRecognizer) {
        let vc = storyboard?.instantiateViewController(identifier: "FVC") as! FirstViewController
        present(vc, animated: true, completion: nil)
        }
    
    @objc func handleTap2(sender: UITapGestureRecognizer) {
        self.dismiss(animated: true)
    }
    
    func setUpUI(){
        firstViewTVC.roundCorners([.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 20)
        secondViewTVC.roundCorners([.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 20)
        thirdViewTVC.roundCorners([.topLeft, .topRight], radius: 20)
        changeAccountButton.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        changeAccountButton.layer.borderWidth = 1
        changeAccountButton.layer.cornerRadius = 15
        changeAccountButton.layer.masksToBounds = true
        
        hdfcImage.layer.cornerRadius = 10
        hdfcImage.layer.masksToBounds = true
        
        oneClickKYCButton.clipsToBounds = true
        oneClickKYCButton.layer.cornerRadius = 20
        oneClickKYCButton.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
    }
    
}
