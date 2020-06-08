//
//  TopicCellCollectionCell.swift
//  BookShare
//
//  Created by Ayman  on 6/4/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class TopicCellCollectionCell: UICollectionViewCell {
    @IBOutlet weak var topicImage: UIImageView!
    @IBOutlet weak var topicName: UILabel!
    
    override func awakeFromNib() {
        topicName.textAlignment = .center
    }
}
