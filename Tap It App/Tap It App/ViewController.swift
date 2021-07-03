

import UIKit
import Foundation


class ViewController: UIViewController {
    
    var timeleft = 30
    var score = 0
    var name:String = ""
    private var timer = Timer()
    
    private let grid1:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 80, width: 100, height: 100)
        
        return view
    }()
    
    private let grid2:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 80, width: 100, height: 100)
        return view
    }()
    
    private let grid3:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 245, y: 80, width: 100, height: 100)
        return view
    }()
    
    private let grid4:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 190, width: 100, height: 100)
        return view
    }()
    
    private let grid5:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 190, width: 100, height: 100)
        return view
    }()
    
    private let grid6:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 245, y: 190, width: 100, height: 100)
        return view
    }()
    
    private let grid7:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 25, y: 300, width: 100, height: 100)
        return view
    }()
    
    private let grid8:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 135, y: 300, width: 100, height: 100)
        return view
    }()
    
    private let grid9:UIView = {
        let view = UIView()
        view.layer.borderWidth = 3
        view.layer.borderColor =  UIColor.black.cgColor
        view.frame = CGRect(x: 245, y: 300, width: 100, height: 100)
        return view
    }()
    
    
    private let timerlabel : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.frame = CGRect(x: 130, y: 430, width: 80, height: 50)
        return label
    }()
    
//    private let timertxt : UILabel = {
//        let label = UILabel()
//        label.text = "Timer"
//        label.textColor = .black
//        label.font = .boldSystemFont(ofSize: 15)
//        label.frame = CGRect(x: 170, y: 430, width: 80, height: 50)
//        return label
//    }()
    
    private let MyImageView: UIImageView = {
        
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleAspectFill
        myImageView.clipsToBounds = true
        myImageView.image = UIImage(named: "clock")
        myImageView.frame = CGRect(x: 170, y: 430, width: 40, height: 40)
        return myImageView
        
    }()
    
    
    
    private let score_lbl : UILabel = {
        let score = UILabel()
        score.text = "Score:  "
        score.textColor = .black
        score.textAlignment = .center
        score.shadowColor = .darkGray
        score.font = .boldSystemFont(ofSize: 20)
        score.frame = CGRect(x: 125, y: 470, width: 80, height: 50)
        return score
    }()
    
   
    
    @objc private let Score : UILabel = {
        let sc = UILabel()
        sc.text = "0"
        sc.textColor = .black
        sc.textAlignment = .center
        sc.shadowColor = .darkGray
        sc.font = .boldSystemFont(ofSize: 20)
        sc.frame = CGRect(x: 180, y: 470, width: 80, height: 50)
        return sc
    }()
    
    
//    private let username_txt: UITextField = {
//        let usr = UITextField()
//        usr.borderStyle = .roundedRect
//        usr.textAlignment = .center
//        usr.textColor = .black
//        usr.placeholder = "Enter Username"
//        return usr
//
//    } ()
    private let stop : UIButton = {
        let strt = UIButton()
        strt.setTitle("Start", for: .normal)
        strt.addTarget(self, action: #selector(starttimer), for: .touchUpInside)
        strt.backgroundColor = .gray
        strt.setTitleColor(.white, for: .normal)
        strt.layer.cornerRadius = 25
       strt.frame = CGRect(x: 130, y: 520, width: 120, height: 60)
        return strt
    } ()
    
    private let leaderboard : UIButton = {
        let strt = UIButton()
        strt.setTitle("Leaderboard", for: .normal)
        strt.addTarget(self, action: #selector(lead), for: .touchUpInside)
        strt.backgroundColor = .gray
        strt.setTitleColor(.white, for: .normal)
        strt.layer.cornerRadius = 25
        strt.frame = CGRect(x: 130, y: 500, width: 120, height: 60)
        return strt
    } ()
    
    
    @objc private func lead(){
        let ld = LeaderboardVC()
        navigationController?.pushViewController(ld, animated: true)
    }
    
    @objc private func starttimer()
    {
       
//        UserDefaults.standard.setValue(nil, forKey: "startGame")
//                print("session clear")
        stop.isHidden = true
        //  myTextView.isHidden = true
        score_lbl.isHidden = false
        Score.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Timerstart), userInfo: .none, repeats: true)
        
    }
    
    
//    func getRandomColor() -> UIColor {
//        //Generate between 0 to 1
//        let red:CGFloat = CGFloat(drand48())
//        let green:CGFloat = CGFloat(drand48())
//        let blue:CGFloat = CGFloat(drand48())
//
//        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
//    }
//
    
//    @objc private func stopTapped(){
//
//         UserDefaults.standard.setValue(nil, forKey: "startGame")
//         print("session clear")
//
//        print("data saved")
////
////        //username alert
////        let alert = UIAlertController(title: "Username", message: "Please Enter Your Name", preferredStyle: .alert)
////        alert.addTextField { (username_txt) in
////            username_txt.text = ""
////        }
////        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
////            let username_txt = alert?.textFields![0]
////            //print("Text field: \(textField!.text)")
////        }))
////        self.present(alert, animated: true, completion: nil)
////
//
//    }
    
//        override func viewWillAppear(_ animated: Bool) {
//            super.viewWillAppear(animated)
//
//            print("view will apear")
//            checkAuth()
//        }
//
//
//
//
//
//    private func checkAuth(){
//
//            print("check auth")
//            if let token  = UserDefaults.standard.string(forKey: "startGame"){
//                print(" token :  \(token)")
//
//            } else {
//
//                let tp  = TapitVC()
//                let nav = UINavigationController(rootViewController: tp)
//                nav.modalPresentationStyle = .fullScreen
//                nav.setNavigationBarHidden(true, animated: false)
//                present(nav,animated: false)
//            }
//
//
//
//        }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        print("run")
        title = "Tap it"
        self.view.backgroundColor = .white
        view.addSubview(grid1)
        view.addSubview(grid2)
        view.addSubview(grid3)
        view.addSubview(grid4)
        view.addSubview(grid5)
        view.addSubview(grid6)
        view.addSubview(grid7)
        view.addSubview(grid8)
        view.addSubview(grid9)
        view.addSubview(timerlabel)
        //view.addSubview(timertxt)
        view.addSubview(MyImageView)
        view.addSubview(score_lbl)
        view.addSubview(Score)
       // view.addSubview(username_txt)
        view.addSubview(stop)
        //view.addSubview(leaderboard)
        
        
        let alert = UIAlertController(title: "Rules", message: "Tap On Highlighted Box To Earn +10 Point, If tap On Wrong Box Then lose -5 Point, Tap Within Given Time, Click Start To Begin", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
        
        
//        self.view.backgroundColor = getRandomColor()
//
//        UIView.animate(withDuration: 0.2, animations: {
//            self.grid6.backgroundColor = self.getRandomColor()
//        })
        
        
        
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(didtapgrid1))
        tapgesture.numberOfTapsRequired = 1
        tapgesture.numberOfTouchesRequired = 1
        
        let tapgesture2 = UITapGestureRecognizer(target: self, action: #selector(didtapgrid2))
        tapgesture2.numberOfTapsRequired = 1
        tapgesture2.numberOfTouchesRequired = 1
        
        let tapgesture3 = UITapGestureRecognizer(target: self, action: #selector(didtapgrid3))
        tapgesture3.numberOfTapsRequired = 1
        tapgesture3.numberOfTouchesRequired = 1
        
        let tapgesture4 = UITapGestureRecognizer(target: self, action: #selector(didtapgrid4))
        tapgesture4.numberOfTapsRequired = 1
        tapgesture4.numberOfTouchesRequired = 1
        
        let tapgesture5 = UITapGestureRecognizer(target: self, action: #selector(didtapgrid5))
        tapgesture5.numberOfTapsRequired = 1
        tapgesture5.numberOfTouchesRequired = 1
        
        let tapgesture6 = UITapGestureRecognizer(target: self, action: #selector(didtapgrid6))
        tapgesture6.numberOfTapsRequired = 1
        tapgesture6.numberOfTouchesRequired = 1
        
        let tapgesture7 = UITapGestureRecognizer(target: self, action: #selector(didtapgrid7))
        tapgesture7.numberOfTapsRequired = 1
        tapgesture7.numberOfTouchesRequired = 1
        
        let tapgesture8 = UITapGestureRecognizer(target: self, action: #selector(didtapgrid8))
        tapgesture8.numberOfTapsRequired = 1
        tapgesture8.numberOfTouchesRequired = 1
        
        let tapgesture9 = UITapGestureRecognizer(target: self, action: #selector(didtapgrid9))
        tapgesture9.numberOfTapsRequired = 1
        tapgesture9.numberOfTouchesRequired = 1
        
        
        grid1.addGestureRecognizer(tapgesture)
        grid2.addGestureRecognizer(tapgesture2)
        grid3.addGestureRecognizer(tapgesture3)
        grid4.addGestureRecognizer(tapgesture4)
        grid5.addGestureRecognizer(tapgesture5)
        grid6.addGestureRecognizer(tapgesture6)
        grid7.addGestureRecognizer(tapgesture7)
        grid8.addGestureRecognizer(tapgesture8)
        grid9.addGestureRecognizer(tapgesture9)
        
        
    }
    
    
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//         timerlabel.frame = CGRect(x: 100, y: grid9.bottom + 20, width: 120, height: 40)
//         timertxt.frame = CGRect(x: 140, y: grid9.bottom + 20, width: 120, height: 40)
//        score_lbl.frame = CGRect(x: 100, y: timertxt.bottom + 20, width: 120, height: 40)
//        Score.frame = CGRect(x: 140, y: timertxt.bottom + 20, width: 120, height: 40)
//       // username_txt.frame = CGRect(x: 120, y: score.bottom + 20, width: 160, height: 40)
////        stop.frame = CGRect(x: 120, y: Score.bottom + 20, width: 120, height: 40)
//        leaderboard.frame = CGRect(x: 120, y: stop.bottom + 20, width: 120, height: 40)
//    }
//
}

extension ViewController{
    
    @objc private func didtapgrid1(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid1.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    
    @objc private func didtapgrid2(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid2.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapgrid3(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid3.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    @objc private func didtapgrid4(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid4.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapgrid5(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid5.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapgrid6(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid6.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapgrid7(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid7.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapgrid8(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid8.backgroundColor!.isEqual(UIColor.green))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    @objc private func didtapgrid9(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        print("Tapped at Location : \(gesture.location(in: sender))")
        if(self.grid9.backgroundColor!.isEqual(UIColor.green))
        {
            //print("yes")
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
        
    }
    
    
    
    
    @objc private func Timerstart(){
        self.timeleft -= 1
        self.timerlabel.text = String(self.timeleft)
        let randomInt = Int.random(in: 1..<10)
        if( randomInt == 1)
        {
            grid1.backgroundColor = .green
            grid2.backgroundColor = .white
            grid3.backgroundColor = .white
            grid4.backgroundColor = .white
            grid5.backgroundColor = .white
            grid6.backgroundColor = .white
            grid7.backgroundColor = .white
            grid8.backgroundColor = .white
            grid9.backgroundColor = .white
            
        }
        else if(randomInt == 2)
        {
            grid2.backgroundColor = .green
            grid1.backgroundColor = .white
            grid3.backgroundColor = .white
            grid4.backgroundColor = .white
            grid5.backgroundColor = .white
            grid6.backgroundColor = .white
            grid7.backgroundColor = .white
            grid8.backgroundColor = .white
            grid9.backgroundColor = .white
        }
        else if(randomInt == 3)
        {
            grid3.backgroundColor = .green
            grid2.backgroundColor = .white
            grid1.backgroundColor = .white
            grid4.backgroundColor = .white
            grid5.backgroundColor = .white
            grid6.backgroundColor = .white
            grid7.backgroundColor = .white
            grid8.backgroundColor = .white
            grid9.backgroundColor = .white
        }
        else if(randomInt == 4)
        {
            grid4.backgroundColor = .green
            grid2.backgroundColor = .white
            grid3.backgroundColor = .white
            grid1.backgroundColor = .white
            grid5.backgroundColor = .white
            grid6.backgroundColor = .white
            grid7.backgroundColor = .white
            grid8.backgroundColor = .white
            grid9.backgroundColor = .white
        }
        else if(randomInt == 5)
        {
            grid5.backgroundColor = .green
            grid2.backgroundColor = .white
            grid3.backgroundColor = .white
            grid4.backgroundColor = .white
            grid1.backgroundColor = .white
            grid6.backgroundColor = .white
            grid7.backgroundColor = .white
            grid8.backgroundColor = .white
            grid9.backgroundColor = .white
        }
        else if(randomInt == 6)
        {
            grid6.backgroundColor = .green
            grid2.backgroundColor = .white
            grid3.backgroundColor = .white
            grid4.backgroundColor = .white
            grid5.backgroundColor = .white
            grid1.backgroundColor = .white
            grid7.backgroundColor = .white
            grid8.backgroundColor = .white
            grid9.backgroundColor = .white
        }
        else if(randomInt == 7)
        {
            grid7.backgroundColor = .green
            grid2.backgroundColor = .white
            grid3.backgroundColor = .white
            grid4.backgroundColor = .white
            grid5.backgroundColor = .white
            grid6.backgroundColor = .white
            grid1.backgroundColor = .white
            grid8.backgroundColor = .white
            grid9.backgroundColor = .white
        }
        else if(randomInt == 8)
        {
            grid8.backgroundColor = .green
            grid2.backgroundColor = .white
            grid3.backgroundColor = .white
            grid4.backgroundColor = .white
            grid5.backgroundColor = .white
            grid6.backgroundColor = .white
            grid7.backgroundColor = .white
            grid1.backgroundColor = .white
            grid9.backgroundColor = .white
        }
        else if(randomInt == 9)
        {
            grid9.backgroundColor = .green
            grid2.backgroundColor = .white
            grid3.backgroundColor = .white
            grid4.backgroundColor = .white
            grid5.backgroundColor = .white
            grid6.backgroundColor = .white
            grid7.backgroundColor = .white
            grid8.backgroundColor = .white
            grid1.backgroundColor = .white
        }
        
        if(self.timeleft==0){
            timer.invalidate()
            grid1.backgroundColor = .white
            grid2.backgroundColor = .white
            grid3.backgroundColor = .white
            grid4.backgroundColor = .white
            grid5.backgroundColor = .white
            grid6.backgroundColor = .white
            grid7.backgroundColor = .white
            grid8.backgroundColor = .white
            grid9.backgroundColor = .white
            
            let alert = UIAlertController(title: "Username", message: "Please Enter Your Name", preferredStyle: .alert)
            alert.addTextField { (tf) in tf.placeholder = "Enter Your Name"}
            
            let action = UIAlertAction(title: "submit", style: .default) { (_) in
                self.name = (alert.textFields?.first?.text)!
                UserDefaults.standard.setValue("sessionkey", forKey: "UserToken")
                UserDefaults.standard.setValue(self.name, forKey: "Name")
                UserDefaults.standard.setValue(self.score, forKey: "Score")
                let vc = LeaderboardVC()
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
            alert.addAction(action)
            present(alert , animated: true , completion: nil)
        }
}
}
