//
//  StoreViewController.swift
//  BookShare
//
//  Created by Ayman  on 6/4/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {

    @IBOutlet weak var storeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storeTableView.register(UINib(nibName: "StoreCellTableCell", bundle: nil), forCellReuseIdentifier: "storeCell")
    }
}

extension StoreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return UITableView.automaticDimension
        return 220
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "storeCell", for: indexPath) as! StoreCellTableCell
        return cell
    }
}
