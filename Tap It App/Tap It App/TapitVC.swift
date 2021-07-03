//
//  TapitVC.swift
//  Tap It App
//
//  Created by DCS on 02/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class TapitVC: UIViewController {
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Tap it"
        label.textAlignment = .center
        label.backgroundColor = .gray
        label.layer.cornerRadius = 25
        label.textColor = .white
        label.font = UIFont(name: "Helveticaneue-Bold", size: 16.0)
        return label
    }()

    
    private let grid1:UIView = {
        let view = UIView()
        //view.backgroundColor = .blue
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 110, width: 100, height: 100)
        return view
    }()
    
    private let grid2:UIView = {
        let view = UIView()
        // view.backgroundColor = .yellow
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 110, width: 100, height: 100)
        return view
    }()
    
    private let grid3:UIView = {
        let view = UIView()
        //view.backgroundColor = .green
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 245, y: 110, width: 100, height: 100)
        return view
    }()
    
    private let grid4:UIView = {
        let view = UIView()
        // view.backgroundColor = .blue
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 220, width: 100, height: 100)
        return view
    }()
    
    private let grid5:UIView = {
        let view = UIView()
        // view.backgroundColor = .yellow
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 220, width: 100, height: 100)
        return view
    }()
    
    private let grid6:UIView = {
        let view = UIView()
        // view.backgroundColor = .green
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 245, y: 220, width: 100, height: 100)
        return view
    }()
    
    private let grid7:UIView = {
        let view = UIView()
        // view.backgroundColor = .blue
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 330, width: 100, height: 100)
        return view
    }()
    
    private let grid8:UIView = {
        let view = UIView()
        // view.backgroundColor = .yellow
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 330, width: 100, height: 100)
        return view
    }()
    
    private let grid9:UIView = {
        let view = UIView()
        //view.backgroundColor = .green
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 245, y: 330, width: 100, height: 100)
        return view
    }()
    
    
    
    
    private let start : UIButton = {
        let strt = UIButton()
        strt.setTitle("Start", for: .normal)
        strt.addTarget(self, action: #selector(startTapped), for: .touchUpInside)
        strt.backgroundColor = .gray
        strt.setTitleColor(.white, for: .normal)
        strt.layer.cornerRadius = 25
        return strt
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("run")
        
        title = "Tap it"
       self.view.backgroundColor = .white
        view.addSubview(myLabel)
        view.addSubview(grid1)
        view.addSubview(grid2)
        view.addSubview(grid3)
        view.addSubview(grid4)
        view.addSubview(grid5)
        view.addSubview(grid6)
        view.addSubview(grid7)
        view.addSubview(grid8)
        view.addSubview(grid9)
        view.addSubview(start)
        
        
       // let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
       // backgroundImage.image = UIImage(named: "bg5.jpg")
        //backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        //self.view.insertSubview(backgroundImage, at: 0)
        
  
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 50, width: view.width - 40, height: 50)
        start.frame = CGRect(x: 120, y: grid9.bottom + 60, width: 120, height: 40)
    }
    
    @objc func startTapped(){
        
        print("Go To Game")
        UserDefaults.standard.setValue("fdbfdhfbdhfbdhfbdhVGVG", forKey: "startGame")
        self.dismiss(animated: true)
    }
    
    
}
