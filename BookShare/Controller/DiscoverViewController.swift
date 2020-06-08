//
//  DiscoverViewController.swift
//  BookShare
//
//  Created by Ayman  on 6/2/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class DiscoverViewController: UIViewController {
    
    
    @IBOutlet weak var TopPicksCollectionView: UICollectionView!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var trendingBookCollectionView: UICollectionView!
    @IBOutlet weak var bestShareCollectionView: UICollectionView!
    @IBOutlet weak var recentlyViewedCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension DiscoverViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case TopPicksCollectionView:
            return 10
        case categoriesCollectionView:
            return 10
        case trendingBookCollectionView:
            return 6
        case bestShareCollectionView:
            return 10
        case recentlyViewedCollectionView:
            return 10
        default:
            print("Erorr")
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case TopPicksCollectionView:
            let cell = TopPicksCollectionView.dequeueReusableCell(withReuseIdentifier: "topPicksCell", for: indexPath) as! TopPicksCollectionCell
            cell.bookName.text = "day four"
            return cell
        case categoriesCollectionView:
            let cell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionCell
            if indexPath.row == 0 {
                cell.categoryName.text = "add"
                cell.categoryImage.image = UIImage(named: "add")
            } else {
                cell.categoryName.text = "test"
                cell.categoryImage.image = UIImage(named: "iStock-10131071761-1")
            }
            return cell
        case trendingBookCollectionView:
            let cell = trendingBookCollectionView.dequeueReusableCell(withReuseIdentifier: "trendingCell", for: indexPath) as! TrendingBooksCollectionCell
            return cell
        case bestShareCollectionView:
            let cell = bestShareCollectionView.dequeueReusableCell(withReuseIdentifier: "bestShareCell", for: indexPath) as! BestShareCollectionCell
            return cell
        case recentlyViewedCollectionView:
            let cell = recentlyViewedCollectionView.dequeueReusableCell(withReuseIdentifier: "recentlyViewCell", for: indexPath) as! RecentlyViewedCollectionCell
            cell.bookName.text = "ayman"
            return cell
        default:
            print("Error")
        }
        return UICollectionViewCell()
    }
    
    
}
