//
//  ViewController.swift
//  Stop the GIF - GIF Game
//
//  Created by Apple on 9/29/18.
//  Copyright © 2018 Razvanjijie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var xAxis = Int()
    
    var timer = Timer()
    
    let background = UIImageView()
    
    let screenSize = UIScreen.main.bounds
    
    @IBOutlet weak var titleText: UIImageView!
    @IBOutlet weak var triangleMatch: UIImageView!
    
    @IBAction func levelsButton(_ sender: Any) {
    }
    
    @IBOutlet weak var soundButton: UIButton!
    
    @IBAction func playButton(_ sender: Any) {
        
        if xAxis > 167  && xAxis < 235{
            
            performSegue(withIdentifier: "game", sender: UIButton())
    }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        background.translatesAutoresizingMaskIntoConstraints = false
        
        setupLayout()
        
        timer = Timer.scheduledTimer(timeInterval: 0.003, target: self, selector: #selector(ViewController.moveTriangle), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
     @objc func moveTriangle() {
        
        xAxis += 1
        
        triangleMatch.center = CGPoint(x: CGFloat(xAxis), y: triangleMatch.center.y)
        
        if xAxis == 400 {
            
            xAxis = -74
           }
        }

    func setupLayout() {
        
        background.image = #imageLiteral(resourceName: "bg")
        background.layer.zPosition = -10
        background.widthAnchor.constraint(equalToConstant: screenSize.width ).isActive = true
        background.heightAnchor.constraint(equalToConstant: screenSize.height).isActive = true
        view.addSubview(background)
        
    }
    
    
}

