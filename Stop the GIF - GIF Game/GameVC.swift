//
//  GameVC.swift
//  Stop the GIF - GIF Game
//
//  Created by Apple on 9/29/18.
//  Copyright © 2018 Razvanjijie. All rights reserved.
//

import UIKit

class GameVC: UIViewController {

    let background = UIImageView()
    
    let screenSize = UIScreen.main.bounds
    
    @IBOutlet weak var gifImage: UIImageView!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var starOne: UIImageView!
    @IBOutlet weak var starTwo: UIImageView!
    @IBOutlet weak var starThree: UIImageView!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var levelLabel: UILabel!
    
    var count : Int = 0
    var timer = Timer()
    var tries = 0
    var level = Int()
    var score = 0
    var currentLevel: Int = 1
    
    @IBAction func play(_ sender: Any) {
        UserDefaults.standard.set((currentLevel + 1), forKey: "currentLevel")
        self.viewDidAppear(true)
        
    }
    
    @IBAction func stopGif(_ sender: Any) {
    
            print(" Tries = \(tries) ")
            print(" Count = \(count) ")
            tries += 1
        
        if currentLevel == 1 {
        
            if count == 36 || count == 37 {
                
                UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                    UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                    UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
                 }
            
        } else if currentLevel == 2 {
            
            if count == 15 || count == 16 {
                
                UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                    UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                    UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }
        
    }
    
    
    
    
    @IBAction func refresh(_ sender: Any) {
        
        tries = 0
        
        starOne.alpha = 0
        starTwo.alpha = 0
        starThree.alpha = 0
        winLabel.alpha = 0
        refreshButton.isHidden = true
        nextButton.isHidden = true
        
        if currentLevel == 1 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(GameVC.level1), userInfo: nil, repeats: true)
            
         } else if currentLevel == 2 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level2), userInfo: nil, repeats: true)
        }
    }
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        
        setupLayout()
        
        if let tempCurrentLevel = UserDefaults.standard.object(forKey: "currentLevel") as? Int{ currentLevel = tempCurrentLevel}
        
        levelLabel.text = "Level \(currentLevel)"
        
        tries = 0
        
        starOne.alpha = 0
        starTwo.alpha = 0
        starThree.alpha = 0
        
        refreshButton.isHidden = true
        nextButton.isHidden = true
        
        winLabel.alpha = 0
        
        if currentLevel == 1 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(GameVC.level1), userInfo: nil, repeats: true)
            
        } else if currentLevel == 2 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level2), userInfo: nil, repeats: true)
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        background.translatesAutoresizingMaskIntoConstraints = false
        
         setupLayout()
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    func setupLayout() {
        
        background.image = #imageLiteral(resourceName: "bg")
        background.layer.zPosition = -20
        background.widthAnchor.constraint(equalToConstant: screenSize.width ).isActive = true
        background.heightAnchor.constraint(equalToConstant: screenSize.height).isActive = true
       
        view.addSubview(background)
        
    }
    
    
    
    @objc func level1() {
        
        count += 1
        
        gifImage.image = UIImage(named: "car\(count).gif")
        
          if count == 49 {
            
            count = 0
           }
      }
    
    @objc func level2() {
        
        count += 1
        
        gifImage.image = UIImage(named: "hammer\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    

   

}
