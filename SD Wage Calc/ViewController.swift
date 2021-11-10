//
//  ViewController.swift
//  SD Wage Calc
//
//  Created by Harry Sargeant on 03/11/2021.
//

import UIKit


class ViewController: UIViewController {
    
     var Hours: Int = 0
    var Money: Double = 0.0
    var calcHours : Double = 0.0
    
    //Title
    @IBOutlet weak var Title_Text: UITextField!
    // Hours Worked
    @IBOutlet weak var HoursWorked: UITextField!
    //Money Earned
    @IBOutlet weak var MoneyEarned: UITextField!
    
    // Hours Stepper
    @IBAction func HoursStepper(_ sender: UIStepper) {
        Hours = Int(sender.value)
        calcHours = Double(Hours)*8.36
        Money=round(calcHours*100)/100
        MoneyEarned.text = "You Have Earned £"+String(Money)
        HoursWorked.text="You Have Worked "+String(Hours)+" Hours"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

