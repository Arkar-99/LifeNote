//
//  MyDayViewController.swift
//  LifeNote
//
//  Created by Arkar on 06/01/2024.
//

import UIKit

class MyDayViewController: UIViewController {
    
    @IBOutlet weak var myDayCollectionView : UICollectionView!
    @IBOutlet weak var myDayPageControl : UIPageControl!
    
    
   // var mydays: [MyDay] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        myDayCollectionView.dataSource = self
        myDayCollectionView.delegate = self
       // myDayPageControl.numberOfPages = mydays.count
        
        myDayPageControl.currentPage = 0
        myDayPageControl.numberOfPages = mydays.count

    }
}

extension MyDayViewController :  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mydays.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myDayCollectionView.dequeueReusableCell(withReuseIdentifier: "MyDayCollectionViewCell", for: indexPath)as! MyDayCollectionViewCell
        
        cell.setup(with: mydays[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = myDayCollectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//           let currentPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
//           myDayPageControl.currentPage = currentPage
//       }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        myDayPageControl.currentPage = indexPath.row
    }
    
}
