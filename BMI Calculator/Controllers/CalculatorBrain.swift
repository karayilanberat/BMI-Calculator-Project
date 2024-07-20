//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by berat on 16.07.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMI() -> BMI {
        return bmi ?? BMI(value: 0.0, advice: "", Color: UIColor.white)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / (height * height)
        var bmiAdvice: String
        var bmiColor: UIColor
        
        if bmiValue > 24.9 {
            bmiAdvice = "Eat less pies!"
            bmiColor = UIColor.red
        } else if bmiValue > 18.5 {
            bmiAdvice = "Fir as a Fiddle!"
            bmiColor = UIColor.green
        } else {
            bmiAdvice = "Eat more pies!"
            bmiColor = UIColor.red
        }
        
        bmi = BMI(value: bmiValue, advice: bmiAdvice, Color: bmiColor)
        
    }
}
