

import UIKit


var finalScore = Int()
var playerName = String()
var allMyStoredData = UserDefaults.standard
var arrayOfData: [Any] = []

class ViewController: UIViewController {
    
    var playerScore = 0
    var arrayOfData: [Any] = []
    
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
    
    private let score_lbl : UILabel = {
        let score = UILabel()
        score.text = "Score:"
        score.textColor = .black
        score.textAlignment = .center
        score.shadowColor = .darkGray
        return score
    }()
    
    @objc private let score : UILabel = {
        let scr = UILabel()
        scr.text = "0"
        scr.textColor = .black
        scr.textAlignment = .center
        scr.shadowColor = .darkGray
        return scr
    }()
    
    
    private let username_txt: UITextField = {
        let usr = UITextField()
        usr.borderStyle = .roundedRect
        usr.textAlignment = .center
        usr.textColor = .black
        usr.placeholder = "Enter Username"
        return usr
        
    } ()
    private let stop : UIButton = {
        let strt = UIButton()
        strt.setTitle("Stop", for: .normal)
        strt.addTarget(self, action: #selector(stopTapped), for: .touchUpInside)
        strt.backgroundColor = .gray
        strt.setTitleColor(.white, for: .normal)
        strt.layer.cornerRadius = 25
        return strt
    } ()
    
    private let leaderboard : UIButton = {
        let strt = UIButton()
        strt.setTitle("Leaderboard", for: .normal)
        strt.addTarget(self, action: #selector(lead), for: .touchUpInside)
        strt.backgroundColor = .gray
        strt.setTitleColor(.white, for: .normal)
        strt.layer.cornerRadius = 25
        return strt
    } ()
    
    @objc private func lead(){
        let ld = LeaderboardVC()
        navigationController?.pushViewController(ld, animated: true)
    }
    
    
    func getRandomColor() -> UIColor {
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    
    @objc private func stopTapped(){
        
         UserDefaults.standard.setValue(nil, forKey: "startGame")
         print("session clear")
        
        saveData()
        //performSegue(withIdentifier: "toLeaderboard", sender: self)
        print("data saved")
        
        //username alert
        let alert = UIAlertController(title: "Username", message: "Please Enter Your Name", preferredStyle: .alert)
        alert.addTextField { (username_txt) in
            username_txt.text = ""
        }
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let username_txt = alert?.textFields![0]
            //print("Text field: \(textField!.text)")
        }))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    func saveData () {
        playerName = username_txt.text!
        playerScore = finalScore
        arrayOfData.append(playerName)
        arrayOfData.append(playerScore)
        allMyStoredData.set(playerName, forKey: "saveTheName")
        allMyStoredData.set(playerScore, forKey: "saveTheScore")
        allMyStoredData.set(arrayOfData, forKey: "saveTheArray")
        
        
    }
    
//    func loadData () {
//        if let loadPlayerName:String = UserDefaults.standard.value(forKey: "saveTheName") as? String {
//            playerName = loadPlayerName
//        }
//
//        if let loadTheScore:Int = UserDefaults.standard.value(forKey: "saveTheName") as? Int {
//            playerScore = loadTheScore
//        }
//    }
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
    
            print("view will apear")
            checkAuth()
        }
    
    
    
    
    
    private func checkAuth(){
    
            print("check auth")
            if let token  = UserDefaults.standard.string(forKey: "startGame"){
                print(" token :  \(token)")
    
            } else {
    
                let tp  = TapitVC()
                let nav = UINavigationController(rootViewController: tp)
                nav.modalPresentationStyle = .fullScreen
                nav.setNavigationBarHidden(true, animated: false)
                present(nav,animated: false)
            }
    
    
    
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("run")
        
        title = "Tap it"
        
       // let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
       // backgroundImage.image = UIImage(named: "bg3.jpg")
       // backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
       // self.view.insertSubview(backgroundImage, at: 0)
        
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
        view.addSubview(score_lbl)
        view.addSubview(score)
       // view.addSubview(username_txt)
        view.addSubview(stop)
        view.addSubview(leaderboard)
        
                let tapGesture =  UITapGestureRecognizer(target: self, action: #selector(didTapView))
                tapGesture.numberOfTapsRequired = 1
                tapGesture.numberOfTouchesRequired = 1
                view.addGestureRecognizer(tapGesture)
        
      //  score_lbl.text = "Your score is: \(finalScore)"
       // loadData()
        
        
        self.view.backgroundColor = getRandomColor()
        
        UIView.animate(withDuration: 0.2, animations: {
            self.grid6.backgroundColor = self.getRandomColor()
        })
        
        
    }
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        score_lbl.frame = CGRect(x: 100, y: grid9.bottom + 20, width: 120, height: 40)
        score.frame = CGRect(x: 140, y: grid9.bottom + 20, width: 120, height: 40)
       // username_txt.frame = CGRect(x: 120, y: score.bottom + 20, width: 160, height: 40)
        stop.frame = CGRect(x: 120, y: score.bottom + 20, width: 120, height: 40)
        leaderboard.frame = CGRect(x: 120, y: stop.bottom + 20, width: 120, height: 40)
    }
    
}

extension ViewController{

    @objc private func didTapView(_ gesture:UITapGestureRecognizer){

        print("tapped at location: \(gesture.location(in: view))")
    }


}

