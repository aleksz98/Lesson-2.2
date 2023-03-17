//
//  ViewController.swift
//  Lesson 2.2
//
//  Created by Иван on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UIView!
    @IBOutlet weak var yellowLabel: UIView!
    @IBOutlet weak var greenLabel: UIView!
    @IBOutlet weak var switchButton: UIButton!
    
    var currentState: TrafficLightState = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [redLabel, yellowLabel, greenLabel].forEach { $0.layer.cornerRadius = $0.frame.size.width / 2 }
        switchButton.layer.cornerRadius = 20
    }
    
    enum TrafficLightState {
        case red
        case yellow
        case green
    }
    
    func changeForRed() {
        redLabel.alpha = 1.0
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 0.3
        currentState = .yellow
    }
    
    func changeforYellow() {
        redLabel.alpha = 0.3
        yellowLabel.alpha = 1.0
        greenLabel.alpha = 0.3
        currentState = .green
    }
    
    func changeForGreen() {
        redLabel.alpha = 0.3
        yellowLabel.alpha = 0.3
        greenLabel.alpha = 1.0
        currentState = .red
    }
    
    @IBAction func switchButtonDidTapped(_ sender: UIButton) {
        switch currentState {
        case .red:
            changeForRed()
        case .yellow:
            changeforYellow()
        case .green:
            changeForGreen()
        }
        if currentState != .red {
            sender.setTitle("Next", for: .normal)
        }
    }
}

