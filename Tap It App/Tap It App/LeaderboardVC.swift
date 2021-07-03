//
//  LeaderboardVC.swift
//  Tap It App
//
//  Created by DCS on 02/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class LeaderboardVC: UIViewController {
    
    let token = UserDefaults.standard.string(forKey: "UserToken")
    let name = UserDefaults.standard.string(forKey: "Name")
    let score = UserDefaults.standard.string(forKey: "Score")
    private let MyImageView: UIImageView = {
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFill
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "winner")
        return myImageView
    }()
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Top Players"
        label.textAlignment = .center
        label.backgroundColor = .gray
        label.layer.cornerRadius = 25
        label.textColor = .white
        label.font = UIFont(name: "Helveticaneue-Bold", size: 16.0)
        return label
    }()

    private let username : UILabel = {
                let label = UILabel()
                label.text = ""
                label.backgroundColor = .gray
                label.layer.cornerRadius = 25
                label.textColor = .white
                label.font = .boldSystemFont(ofSize: 20)
               label.textAlignment = .center
                return label
            }()
    
    private let scorelbl : UILabel = {
        let label = UILabel()
        label.text = ""
        label.layer.cornerRadius = 25
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Leader Board"
        view.addSubview(MyImageView)
        view.addSubview(myLabel)
        view.addSubview(username)
        view.addSubview(scorelbl)
        username.text = name
        scorelbl.text = score

        self.view.backgroundColor = .white
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg6.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        MyImageView.frame =  CGRect(x: 100, y: view.safeAreaInsets.top + 10, width: view.width/2, height: 150)
        myLabel.frame = CGRect(x: 20, y: 90, width: view.width - 40, height: 50)
        username.frame = CGRect(x: 20, y: myLabel.bottom + 40, width: view.width - 40, height: 40)
        scorelbl.frame = CGRect(x: 90, y: myLabel.bottom + 40, width: view.width - 40, height: 40)
    }

}
 

