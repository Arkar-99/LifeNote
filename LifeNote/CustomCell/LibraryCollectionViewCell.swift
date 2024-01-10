//
//  LibraryCollectionViewCell.swift
//  LifeNote
//
//  Created by Arkar on 05/01/2024.
//

import UIKit

class LibraryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var libraryImage : UIImageView!
    @IBOutlet weak var libraryLabel : UILabel!
    
    
    func setup (with libraries : Library){
        libraryImage.image = libraries.image
        libraryLabel.text = libraries.title
        
        libraryImage.layer.cornerRadius = 8
        libraryImage.layer.masksToBounds = true
    }
    
}
