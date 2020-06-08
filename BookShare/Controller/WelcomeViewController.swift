//
//  WelcomeViewController.swift
//  BookShare
//
//  Created by Ayman  on 6/7/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit
import TinyConstraints
class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var viewHolder: UIView!
    let scollView = UIScrollView()
    
    let titles = ["Share your favourite books with your family And Friends",
                  "Discover 20 million books shelved online" ,
                  "Buy and Sell books With Us"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        //
        super.viewDidLayoutSubviews()
        configure()
    }
    
    private func configure(){
        scollView.frame = viewHolder.bounds
        viewHolder.addSubview(scollView)
        
        for x in 0..<3{
            let pageView = UIView(frame: CGRect(x: CGFloat(x) * (viewHolder.frame.size.width), y: 0, width: viewHolder.frame.size.width, height: viewHolder.frame.size.height))
            scollView.addSubview(pageView)
            
            
            let buttonSkip = UIButton( frame: CGRect(x: pageView.frame.size.width-70, y: 10, width: 50, height: 50))
            pageView.addSubview(buttonSkip)
            buttonSkip.setTitle("Skip", for: .normal)
            buttonSkip.setTitleColor(.gray, for: .normal)
            buttonSkip.addTarget(self, action: #selector(buttonSkipPressed), for: .touchUpInside)
            
            
            let imageView = UIImageView()
            pageView.addSubview(imageView)
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: "welcome_\(x+1)")
            imageView.centerXToSuperview()
            imageView.width(300)
            imageView.height(400)
            
            let label = UILabel()
            label.width(viewHolder.frame.size.width-20)
            label.textAlignment = .center
            pageView.addSubview(label)
            label.text = titles[x]
            label.numberOfLines = 0
            label.font = UIFont.systemFont(ofSize: 20)
            label.topToBottom(of: imageView , offset: 10)
            label.centerXToSuperview()
            
            let dotsImages = UIImageView()
            pageView.addSubview(dotsImages)
            dotsImages.contentMode = .scaleAspectFit
            dotsImages.image = UIImage(named: "dot_\(x+1)")
            dotsImages.width(50)
            dotsImages.height(10)
            dotsImages.centerXToSuperview()
            dotsImages.topToBottom(of: label , offset: 35)
            
            let button = UIButton(frame: CGRect(x: 10, y: pageView.frame.size.height-180, width: viewHolder.frame.size.width-20, height: 50))
            if x == 2 {
                button.setTitleColor(.white, for: .normal)
                button.backgroundColor = .systemPink
                button.setTitle("Get Started", for: .normal)
            }
            button.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
            button.tag = x+1
            button.layer.cornerRadius = 15
            pageView.addSubview(button)
        }
        
        scollView.contentSize = CGSize(width: viewHolder.frame.size.width*3, height: 0)
        scollView.isPagingEnabled = true
    }
    
    @objc func buttonSkipPressed(){
         dismiss(animated: true, completion: nil)
    }
    
    @objc func didTabButton(_ button: UIButton){
        guard button.tag < 3 else {
            // dissmis:
            Core.shared.setIsNotNewUser()
            dismiss(animated: true, completion: nil)
            return
        }
        // go to next page:
        scollView.setContentOffset(CGPoint(x: viewHolder.frame.size.width * CGFloat(button.tag), y: 0), animated: true)
    }
    
    
    
}
