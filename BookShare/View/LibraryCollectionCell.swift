//
//  LibraryCollectionCell.swift
//  BookShare
//
//  Created by Ayman  on 6/4/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class LibraryCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var cellBackground: UIView!
    @IBOutlet weak var bookCategory: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    
    override func awakeFromNib() {
        cellBackground.layer.cornerRadius = 20
    }
    
    func configureBackgroundColor(text: String){
        switch bookCategory.text {
               case "Biography":
                   cellBackground.backgroundColor = UIColor(hexString: "#35BEE0")
               case "Business":
                   cellBackground.backgroundColor = UIColor(hexString: "#59499E")
               case "Children":
                   cellBackground.backgroundColor = UIColor(hexString: "#5CBA47")
               case "Cookery":
                   cellBackground.backgroundColor = UIColor(hexString: "#FF6EA1")
               case "Fiction":
                   cellBackground.backgroundColor = UIColor(hexString: "#8589EF")
               case "Graphic Novels":
                   cellBackground.backgroundColor = UIColor(hexString: "#FFC611")
               default:
                   print("Error")
               }
    }
    
   
    
    
}
