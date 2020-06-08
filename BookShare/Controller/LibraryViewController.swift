//
//  LibraryViewController.swift
//  BookShare
//
//  Created by Ayman  on 6/4/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {
    
    @IBOutlet weak var libraryCollectionView: UICollectionView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    let arrayOfCategories = ["Biography","Business","Children","Cookery","Fiction","Graphic Novels"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        configureSegmentedControl()
    }
    
    func configureSegmentedControl(){
        segmentedControl.addTarget(self, action: #selector(handleSegmentGhange), for: .valueChanged)
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        //segmentedControl.backgroundColor =
    }
    
    @objc func handleSegmentGhange() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            print(0)
            libraryCollectionView.reloadData()
            
        case 1:
            print(1)
            libraryCollectionView.reloadData()
        case 2:
            print(2)
            libraryCollectionView.reloadData()
        default:
            print("Error")
        }
    }
}

extension LibraryViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return arrayOfCategories.count
        case 1:
            return arrayOfCategories.count
        case 2:
           return arrayOfCategories.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "libraryCell", for: indexPath) as! LibraryCollectionCell
            cell.bookCategory.text = arrayOfCategories[indexPath.row]
            cell.bookImage.image = UIImage(named: arrayOfCategories[indexPath.row])
            cell.configureBackgroundColor(text: arrayOfCategories[indexPath.row])
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "libraryCell", for: indexPath) as! LibraryCollectionCell
            cell.configureBackgroundColor(text: arrayOfCategories[indexPath.row])
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "libraryCell", for: indexPath) as! LibraryCollectionCell
            cell.configureBackgroundColor(text: arrayOfCategories[indexPath.row])
            return cell
        default:
            print("Error")
        }
        return UICollectionViewCell()
    }
    
    
}


