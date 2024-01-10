//
//  CategoriesViewController.swift
//  LifeNote
//
//  Created by Arkar on 05/01/2024.
//

import UIKit

class CategoriesViewController: UIViewController {
   
    @IBOutlet weak var categoriesCollectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension  CategoriesViewController:  UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath)as! CategoriesCollectionViewCell
        cell.setup(with: categories[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 393, height: 90)
    }
    
}
