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
            let higherScore = UserDefaults.standard.object(forKey: "Level \(currentLevel)") as? Int
        
        if currentLevel == 1 {
        
            if count == 36 || count == 37 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                   
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
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
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 3 {
            
            if count == 45 || count == 46 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                 
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        } else if currentLevel == 4 {
            
            if count == 43 || count == 44 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 5 {
            
            if count == 23 || count == 24 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                   
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                        
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 6 {
            
            if count == 48 || count == 49 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                        
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                        
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        } else if currentLevel == 7 {
            
            if count == 24 || count == 25 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 8 {
            
            if count == 24 || count == 25 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                    
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 9 {
            
            if count == 48 || count == 49 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 10 {
            
            if count == 29 || count == 30 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 11 {
            
            if count == 36 || count == 37 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                        
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                        
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 12 {
            
            if count == 23 || count == 24 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 13 {
            
            if count == 48 || count == 49 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 14 {
            
            if count == 35 || count == 36 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
             
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 15 {
            
            if count == 29 || count == 30 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                  
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                        
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                    if let higherScore = UserDefaults.standard.object(forKey: "Level \(currentLevel)") as? Int {
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                        
                    }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 16 {
            
            if count == 40 || count == 41 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                    
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 17 {
            
            if count == 19 || count == 20 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                    
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 18 {
            
            if count == 39 || count == 40 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                    
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                        
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        } else if currentLevel == 19 {
            
            if count == 14 || count == 15 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                        
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                    
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                        
                    
                    winLabel.text = "Good Job !"
                    UIView.animate(withDuration: 1.4) { self.starOne.alpha = 1 }
                    
                }
                
                refreshButton.isHidden = false
                nextButton.isHidden = false
                
                winLabel.alpha = 1
                
                timer.invalidate()
            }
            
        }  else if currentLevel == 20 {
            
            if count == 0 || count == 1 {
                
                if UserDefaults.standard.object(forKey: "Level \(currentLevel + 1)") == nil{
                    
                    UserDefaults.standard.set(0, forKey: "Level \(currentLevel + 1)")
                }
                
                if tries <= 5 {
                    
                    UserDefaults.standard.set(3, forKey: "Level \(currentLevel)")
                    winLabel.text = "Perfect !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    UIView.animate(withDuration: 2.5) { self.starThree.alpha = 1 }
                    
                } else if tries > 5 && tries <= 10 {
                    
                        
                        if higherScore == 3{
                            
                        } else {
                            UserDefaults.standard.set(2, forKey: "Level \(currentLevel)")
                        }
                    
                    winLabel.text = "Excellent !"
                    UIView.animate(withDuration: 1.2) { self.starOne.alpha = 1 }
                    UIView.animate(withDuration: 2) { self.starTwo.alpha = 1 }
                    
                } else if tries > 10 {
                        
                        if higherScore == 3 || higherScore == 2 {
                            
                        } else {
                            UserDefaults.standard.set(1, forKey: "Level \(currentLevel)")
                        }
                    
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
            
        } else if currentLevel == 3 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level3), userInfo: nil, repeats: true)
            
        } else if currentLevel == 4 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level4), userInfo: nil, repeats: true)
            
        } else if currentLevel == 5 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level5), userInfo: nil, repeats: true)
            
        } else if currentLevel == 6 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level6), userInfo: nil, repeats: true)
            
        } else if currentLevel == 7 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level7), userInfo: nil, repeats: true)
            
        } else if currentLevel == 8 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level8), userInfo: nil, repeats: true)
            
        } else if currentLevel == 9 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level9), userInfo: nil, repeats: true)
            
        } else if currentLevel == 10 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level10), userInfo: nil, repeats: true)
            
        } else if currentLevel == 11 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level11), userInfo: nil, repeats: true)
            
        } else if currentLevel == 12 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level12), userInfo: nil, repeats: true)
            
        } else if currentLevel == 13 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level13), userInfo: nil, repeats: true)
            
        } else if currentLevel == 14 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level14), userInfo: nil, repeats: true)
            
        } else if currentLevel == 15 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level15), userInfo: nil, repeats: true)
            
        } else if currentLevel == 16 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level16), userInfo: nil, repeats: true)
            
        } else if currentLevel == 17 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level17), userInfo: nil, repeats: true)
            
        } else if currentLevel == 18 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level18), userInfo: nil, repeats: true)
            
        } else if currentLevel == 19 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level19), userInfo: nil, repeats: true)
            
        } else if currentLevel == 20 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level20), userInfo: nil, repeats: true)
            
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
            
        } else if currentLevel == 3 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level3), userInfo: nil, repeats: true)
            
        } else if currentLevel == 4 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level4), userInfo: nil, repeats: true)
            
        } else if currentLevel == 5 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level5), userInfo: nil, repeats: true)
            
        } else if currentLevel == 6 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level6), userInfo: nil, repeats: true)
            
        } else if currentLevel == 7 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level7), userInfo: nil, repeats: true)
            
        } else if currentLevel == 8 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level8), userInfo: nil, repeats: true)
            
        } else if currentLevel == 9 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level9), userInfo: nil, repeats: true)
            
        } else if currentLevel == 10 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level10), userInfo: nil, repeats: true)
            
        } else if currentLevel == 11 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level11), userInfo: nil, repeats: true)
            
        } else if currentLevel == 12 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level12), userInfo: nil, repeats: true)
            
        } else if currentLevel == 13 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level13), userInfo: nil, repeats: true)
            
        } else if currentLevel == 14 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level14), userInfo: nil, repeats: true)
            
        } else if currentLevel == 15 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level15), userInfo: nil, repeats: true)
            
        } else if currentLevel == 16 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level16), userInfo: nil, repeats: true)
            
        } else if currentLevel == 17 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level17), userInfo: nil, repeats: true)
            
        } else if currentLevel == 18 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level18), userInfo: nil, repeats: true)
            
        } else if currentLevel == 19 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level19), userInfo: nil, repeats: true)
            
        } else if currentLevel == 20 {
            
            timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(GameVC.level20), userInfo: nil, repeats: true)
            
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
    
    
    @objc func level3() {
        
        count += 1
        
        gifImage.image = UIImage(named: "loading\(count).png")
        
        if count == 46 {
            
            count = 0
        }
    }
    
    
    @objc func level4() {
        
        count += 1
        
        gifImage.image = UIImage(named: "pizza\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level5() {
        
        count += 1
        
        gifImage.image = UIImage(named: "camera\(count).png")
        
        if count == 31 {
            
            count = 0
        }
    }
    
    
    @objc func level6() {
        
        count += 1
        
        gifImage.image = UIImage(named: "golf\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level7() {
        
        count += 1
        
        gifImage.image = UIImage(named: "banana\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level8() {
        
        count += 1
        
        gifImage.image = UIImage(named: "rocket\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level9() {
        
        count += 1
        
        print(count)
        
        gifImage.image = UIImage(named: "money\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level10() {
        
        count += 1
        
        gifImage.image = UIImage(named: "basketball\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level11() {
        
        count += 1
        
        gifImage.image = UIImage(named: "trumpet\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level12() {
        
        count += 1
        
        gifImage.image = UIImage(named: "football\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level13() {
        
        count += 1
        
        gifImage.image = UIImage(named: "flower\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level14() {
        
        count += 1
        
        gifImage.image = UIImage(named: "milk\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level15() {
        
        count += 1
        
        gifImage.image = UIImage(named: "tree\(count).gif")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level16() {
        
        count += 1
        
        gifImage.image = UIImage(named: "egg\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level17() {
        
        count += 1
        
        gifImage.image = UIImage(named: "fish\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level18() {
        
        count += 1
        
        gifImage.image = UIImage(named: "rubik\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level19() {
        
        count += 1
        
        gifImage.image = UIImage(named: "scale\(count).png")
        
        if count == 49 {
            
            count = 0
        }
    }
    
    
    @objc func level20() {
        
        count += 1
        
        gifImage.image = UIImage(named: "apple\(count).png")
        
        if count == 48 {
            
            count = 0
        }
    }
    

   

}
