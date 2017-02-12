//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Jelmar Van Aert on 12/02/2017.
//  Copyright © 2017 Jelmar Van Aert. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
