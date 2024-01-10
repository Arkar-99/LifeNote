//
//  HomeMainCollectionViewCell.swift
//  LifeNote
//
//  Created by Arkar on 06/01/2024.
//

import UIKit

class HomeMainCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var homeMainImage : UIImageView!
   
    func setup (with  homes : Home){
        homeMainImage.image =  homes.image
        
        
        homeMainImage.layer.cornerRadius = 8
        homeMainImage.layer.masksToBounds = true
    }
}
