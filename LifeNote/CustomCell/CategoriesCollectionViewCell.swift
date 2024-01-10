//
//  CategoriesCollectionViewCell.swift
//  LifeNote
//
//  Created by Arkar on 05/01/2024.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoriesImage : UIImageView!
    @IBOutlet weak var categoriesLabel : UILabel!
    
    func setup (with categories : Category){
        categoriesImage.image = categories.image
        categoriesLabel .text = categories.title
        
        categoriesImage.layer.cornerRadius = 8
        categoriesImage.layer.masksToBounds = true
    }
}
