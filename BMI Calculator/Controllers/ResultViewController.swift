//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by berat on 16.07.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: BMI?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet var backGround: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        bmiLabel.text = "\(String(format: "%.2f", bmi?.value ?? "0.0"))"
        adviceLabel.text = bmi?.advice
        backGround.backgroundColor = bmi?.Color
        
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
