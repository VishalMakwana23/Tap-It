//
//  LeaderboardVC.swift
//  Tap It App
//
//  Created by DCS on 02/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class LeaderboardVC: UIViewController {
    
    
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
    
    private let myTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Vshal :         60"
        textView.textAlignment = .center
        textView.backgroundColor = .gray
        textView.textColor = .white
        textView.layer.cornerRadius = 25
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Leader Board"
        view.addSubview(myLabel)
        view.addSubview(myTextView)
        //myTextView.text = "\((arrayOfData).map{"\($0)"})"
        
        self.view.backgroundColor = .white
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg6.jpg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabel.frame = CGRect(x: 20, y: 90, width: view.width - 40, height: 50)
        myTextView.frame = CGRect(x: 20, y: myLabel.bottom + 40, width: view.width - 40, height: 40)
    }

}
