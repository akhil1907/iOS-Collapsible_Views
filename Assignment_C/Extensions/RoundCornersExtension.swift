//
//  RoundCornersExtension.swift
//  Assignment_C
//
//  Created by Akhil on 13/06/21.
//

import Foundation
import UIKit

extension UIView{

    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
         let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
    }

}
