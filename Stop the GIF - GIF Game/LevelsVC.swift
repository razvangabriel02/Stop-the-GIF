//
//  LevelsVC.swift
//  Stop the GIF - GIF Game
//
//  Created by Apple on 9/29/18.
//  Copyright © 2018 Razvanjijie. All rights reserved.
//

import UIKit

class LevelsVC: UIViewController {

    let background = UIImageView()
    let screenSize = UIScreen.main.bounds
    var image = UIImage()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        if let tempLevelOne = UserDefaults.standard.object(forKey: "Level 1") as? Int {
            
            print(tempLevelOne)
            
        } else {
            
            UserDefaults.standard.set(0, forKey: "Level 1")
        }
        
        var contentWidth: CGFloat = 0.0
        
        for x in 1...30 {
            
            let fix = (x - 1)
            
            let newX = scrollView.frame.midX - 90 + (((scrollView.frame.size.width / 2) - 35) * CGFloat(fix))
            
            contentWidth = newX
            
            let button = UIButton()
            
            if let tempScore = UserDefaults.standard.object(forKey: "Level \(x)") as? Int{
                
                 button.addTarget(self, action: #selector(LevelsVC.segue), for: .touchUpInside)
                
                let levelScore = tempScore
                
                if levelScore == 3 {
                    
                    image = UIImage(named: "Level \(x) Three Star.png")!
                    
                } else if levelScore == 2 {
                    
                    image = UIImage(named: "Level \(x) Two Star.png")!
                    
                } else if levelScore == 1 {
                    
                    image = UIImage(named: "Level \(x) One Star.png")!
                    
                } else if levelScore == 0 {
                    
                    image = UIImage(named: "Level \(x).png")!
                    
                }
                
            } else {
                
                image = UIImage(named: "Level Lock \(x).png")!
            }
            
            button.setImage(image , for: [])
            
            button.tag = x
            
            button.frame = CGRect(x: newX - 50 , y: (view.frame.size.height / 2) - 100, width: 100, height: 100)
            
            button.imageView?.contentMode = .scaleAspectFill
            
            scrollView.addSubview(button)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth + 150, height: scrollView.frame.size.height)
        scrollView.clipsToBounds = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        background.translatesAutoresizingMaskIntoConstraints = false
        
        setupLayout()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    @objc func segue(sender: UIButton){
        
        performSegue(withIdentifier: "gifs", sender: UIButton())
        
        UserDefaults.standard.set( sender.tag, forKey: "currentLevel")
    }

    
    
    func setupLayout() {
        
        background.image = #imageLiteral(resourceName: "bg")
        background.layer.zPosition = -10
        background.widthAnchor.constraint(equalToConstant: screenSize.width ).isActive = true
        background.heightAnchor.constraint(equalToConstant: screenSize.height).isActive = true
        view.addSubview(background)
        
    }
   
}
