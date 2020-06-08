//
//  ProfileViewController.swift
//  BookShare
//
//  Created by Ayman  on 6/7/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var settingsTableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var editProfileBtn: UIButton!
    
    let arraryOfHeaders = ["Account" , "Settings"]
    let arrayOfItemsSectionOne = ["My cart" , "Purchases" , "Account"]
    let arrayOfItemsSectionTwo = ["Night Mode" , "Notification" , "Language" , "Help", "Sign Out"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingsTableView.register(UINib(nibName: "SettingsCell", bundle: nil), forCellReuseIdentifier: "settingCell")
        
        profileImage.layer.cornerRadius = 35
        editProfileBtn.layer.cornerRadius = 10
        
    }

}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return arrayOfItemsSectionOne.count
        }else {
            return arrayOfItemsSectionTwo.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return arraryOfHeaders[section]
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: settingsTableView.frame.width, height: 40))
        headerView.backgroundColor = .clear
        
        let headerName = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width - 15, height: 40))
        headerName.text = arraryOfHeaders[section]
        headerName.textColor = .gray
        headerView.addSubview(headerName)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as! SettingsCell
        if indexPath.section == 0 {
            cell.settingLabel.text = arrayOfItemsSectionOne[indexPath.row]
            cell.settingImage.image = UIImage(named: arrayOfItemsSectionOne[indexPath.row])
        }else {
            cell.settingLabel.text = arrayOfItemsSectionTwo[indexPath.row]
            cell.settingImage.image = UIImage(named: arrayOfItemsSectionTwo[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("for letter")
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
