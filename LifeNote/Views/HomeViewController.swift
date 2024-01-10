//
//  HomeViewController.swift
//  LifeNote
//
//  Created by Arkar on 05/01/2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeCollectionView : UICollectionView!
    @IBOutlet weak var homeMainCollectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}
extension HomeViewController :  UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == homeCollectionView {
            let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
            cell.setup(with: homes[indexPath.row])
            return cell
        } else if collectionView == homeMainCollectionView {
            let cell = homeMainCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeMainCollectionViewCell", for: indexPath) as! HomeMainCollectionViewCell
            // Set up the cell for homeMainCollectionView using the appropriate data
            cell.setup(with: homes[indexPath.row])
            return cell
        }
        
        // Handle other collection views or return a default cell if needed
        return UICollectionViewCell()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == homeCollectionView {
            return CGSize(width: 100, height: 100)
        } else if collectionView == homeMainCollectionView {
            return CGSize(width: 100, height: 100)
        }
        
        return CGSize(width: 50, height: 100)
        
    }
        
    }

