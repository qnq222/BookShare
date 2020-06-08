//
//  SettingsCell.swift
//  BookShare
//
//  Created by Ayman  on 6/7/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
    
    
    @IBOutlet weak var settingImage: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
