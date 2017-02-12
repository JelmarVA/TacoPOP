//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Jelmar Van Aert on 12/02/2017.
//  Copyright © 2017 Jelmar Van Aert. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakable {
    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco){
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }
    
}
