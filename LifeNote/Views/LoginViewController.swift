//
//  LoginViewController.swift
//  LifeNote
//
//  Created by Arkar on 06/01/2024.
//

import UIKit

class LoginViewController: UIViewController {
  
    @IBOutlet weak var loginCollectionView : UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LoginViewController :  UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logins.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = loginCollectionView.dequeueReusableCell(withReuseIdentifier: "LoginCollectionViewCell", for: indexPath)as! LoginCollectionViewCell
        cell.setup(with: logins[indexPath.row])
    return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
