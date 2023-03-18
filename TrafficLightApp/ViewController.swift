//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Sergei Bakhmatov on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var countTapps = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
        startButton.layer.cornerRadius = 15
        
    }

    @IBAction func startButtonDidTapped() {
        
        if countTapps == 0 {
            startButton.setTitle("NEXT", for: .normal)
            countTapps += 1
            changeTrafficLightColor()
        } else if countTapps <= 2 {
            countTapps += 1
            changeTrafficLightColor()
        } else {
            countTapps = 1
            changeTrafficLightColor()
        }
       
    }
    
    private func changeTrafficLightColor() {
    
        switch countTapps {
        case 1:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        case 3:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
        default:
            return
        }
        
    }
    
}

