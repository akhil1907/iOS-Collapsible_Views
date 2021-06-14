//
//  SecondViewController.swift
//  Assignment_C
//
//  Created by Akhil on 13/06/21.
//

import Foundation
import UIKit
class SecondViewController: UIViewController{
    @IBOutlet weak var firstViewSVC: UIView!
    @IBOutlet weak var selectYourBankButton: UIButton!
    @IBOutlet weak var secondViewSVC: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var createYourPlanButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        setUpUI()
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        firstViewSVC.addGestureRecognizer(tapGesture1)
        
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func selectYourBankButtonPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "TVC") as! ThirdViewController
        present(vc, animated: true, completion: nil)
    }
    
    func setUpUI(){
        selectYourBankButton.clipsToBounds = true
        selectYourBankButton.layer.cornerRadius = 20
        selectYourBankButton.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
        
        firstViewSVC.roundCorners([.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 20)
        secondViewSVC.roundCorners([.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 20)
        
        createYourPlanButton.layer.borderWidth = 1.0
        createYourPlanButton.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        createYourPlanButton.layer.cornerRadius = 15.0
        createYourPlanButton.layer.masksToBounds = true
    }
}

extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(indexPath.item == 0){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendedPlansCell1", for: indexPath) as? recommendedPlansCustomCell
            cell?.contentView.layer.cornerRadius = 20.0
            cell?.contentView.layer.masksToBounds = true
            return cell!
        }
        else if(indexPath.item == 1){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendedPlansCell2", for: indexPath) as? recommendedPlansCustomCell
            cell?.contentView.layer.cornerRadius = 20.0
            cell?.contentView.layer.masksToBounds = true
            return cell!
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendedPlansCell3", for: indexPath) as? recommendedPlansCustomCell
            cell?.contentView.layer.cornerRadius = 20.0
            cell?.contentView.layer.masksToBounds = true
            return cell!
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 192, height: 192)
    }
    
}
