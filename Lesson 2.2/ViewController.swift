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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [redLabel, yellowLabel, greenLabel].forEach { $0.layer.cornerRadius = $0.frame.width / 2 }
        switchButton.layer.cornerRadius = 10
    }

    @IBAction func switchButtonDidTapped(_ sender: UIButton) {
        
    }
}

