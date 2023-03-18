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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
        startButton.layer.cornerRadius = 15
        
    }

    @IBAction func startBatton() {
    }
    
}

