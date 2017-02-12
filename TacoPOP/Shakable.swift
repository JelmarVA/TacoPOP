//
//  Shakable.swift
//  TacoPOP
//
//  Created by Jelmar Van Aert on 12/02/2017.
//  Copyright © 2017 Jelmar Van Aert. All rights reserved.
//

import Foundation
import UIKit

protocol Shakable {}

extension Shakable where Self: UIView {
    func shake() {
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.05
        anim.repeatCount = 5
        anim.autoreverses  = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        layer.add(anim, forKey: "position")
    }
}
