//
//  ViewController.swift
//  BookShare
//
//  Created by Ayman  on 6/1/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class ChooseTopicsViewController: UIViewController {
    
    
    @IBOutlet weak var chooseTopicCollectionView: UICollectionView!
    
    let arrayOfTopics = ["Politics" , "History" ,"Science" ,"Law" ,"Food" ,"MEDICAL" ,"Design" ,"Culture" ,"Sport"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if Core.shared.isNewUser(){
            // show Onboarding flow:
            let vc = storyboard?.instantiateViewController(identifier: "welcome")
            vc?.modalPresentationStyle = .fullScreen
            present(vc!, animated: true)
            
            
        }
    }
    
}

extension ChooseTopicsViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfTopics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topicCell", for: indexPath) as! TopicCellCollectionCell
        cell.topicName.text = arrayOfTopics[indexPath.row]
        cell.topicImage.image = UIImage(named: arrayOfTopics[indexPath.row])
        return cell
    }
}

class Core {
    static let shared = Core()
    
    func isNewUser() -> Bool{
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    
    func setIsNotNewUser(){
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
}

