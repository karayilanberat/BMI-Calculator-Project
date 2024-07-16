//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    var heightFloat = 1.5
    var weightInt = 100
    
    @IBAction func heightSlider(_ sender: UISlider) {
        self.height.text = "\(String(format: "%.2f", sender.value)) m"
        heightFloat = Double(sender.value)
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        self.weight.text = "\(String(format: "%.0f", sender.value)) kg"
        weightInt = Int(sender.value)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bmi = Double(weightInt) / (heightFloat * heightFloat)
    }
}
