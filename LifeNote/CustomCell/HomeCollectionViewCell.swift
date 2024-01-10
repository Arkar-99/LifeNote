//
//  HomeCollectionViewCell.swift
//  LifeNote
//
//  Created by Arkar on 05/01/2024.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var homeImage : UIImageView!
    @IBOutlet weak var homeLabel : UILabel!
    
    func setup (with  homes : Home){
        homeImage.image =  homes.image
        homeLabel .text =  homes.title
        
        homeImage.layer.cornerRadius = 8
        homeImage.layer.masksToBounds = true
    }
    
}
