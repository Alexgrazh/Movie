//
//  HomeViewController.swift
//  Movie
//
//  Created by Alex Grazhdan on 21.10.2022.
//

import UIKit
import Alamofire
//import SDWebImage

class HomeViewController: UIViewController {
    
    
    
    var currentPage = 0 {
        didSet {

        }
    }
        @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var pageControl: UIPageControl!
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
            super.viewDidLoad()
        
        collectionView.dataSource = self
           // ColectionView.collectionViewLayout = self
            collectionView.delegate = self
        

        }
    
    
    
    
    }





extension HomeViewController: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 10
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
            //cell.setup(with: results[indexPath.row])
            return cell
        }


    }

    extension HomeViewController :UICollectionViewDelegateFlowLayout{
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            return CGSize(width: 390, height: 250)
            CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }

        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let width = scrollView.frame.width

            currentPage = Int(scrollView.contentOffset.x / width)
            pageControl.currentPage = currentPage
        }
  }

