//
//  LibraryViewController.swift
//  LifeNote
//
//  Created by Arkar on 05/01/2024.
//

import UIKit

class LibraryViewController: UIViewController {
   
    @IBOutlet weak var libraryCollectionView : UICollectionView!
    @IBOutlet weak var bookImage : UIImageView!
    @IBOutlet weak var searchButton : UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookImage.layer.cornerRadius = 30
        bookImage.layer.masksToBounds = true
        
        searchButton.layer.cornerRadius = 20
        searchButton.layer.masksToBounds = true
    }
}

extension LibraryViewController :UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return libraries.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = libraryCollectionView.dequeueReusableCell(withReuseIdentifier: "LibraryCollectionViewCell", for: indexPath)as! LibraryCollectionViewCell
        
        cell.setup(with: libraries[indexPath.row])
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 393, height: 91)
    }
    
}
