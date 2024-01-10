//
//  LoginCollectionViewCell.swift
//  LifeNote
//
//  Created by Arkar on 06/01/2024.
//

import UIKit

class LoginCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var loginImage : UIImageView!
    @IBOutlet weak var loginView  : UIView!
    
   
    func setup (with  logins : Login){
        loginImage.image =  logins.image
        
        loginView.layer.cornerRadius = 8
     //   loginView.layer.masksToBounds = true
        
        
        loginImage.layer.cornerRadius = 8
        loginImage.layer.masksToBounds = true
    }
    
}
