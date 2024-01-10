//
//  MyDayCollectionViewCell.swift
//  LifeNote
//
//  Created by Arkar on 06/01/2024.
//

import UIKit

class MyDayCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myDayImage : UIImageView!
    @IBOutlet weak var myDayLabel : UILabel!
    
    
    func setup(with mydays : MyDay){
        myDayImage.image = mydays.image
        myDayLabel.text = mydays.title
    }
    
}
