//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet var billTextField: UITextField!
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    @IBOutlet var splitNumberLabel: UILabel!
    
    var selectedTip: Double = 0.10
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        
        let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
        
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentSign)!
       
        selectedTip = buttonTitleAsNumber / 100
//        if sender.titleLabel?.text ==
//            "0%" {
//            selectedTip = ".00"
//            zeroPctButton.isSelected = true
//            tenPctButton.isSelected = false
//            twentyPctButton.isSelected = false
//        } else if sender.titleLabel?.text == "10%" {
//             selectedTip = ".10"
//            tenPctButton.isSelected = true
//            zeroPctButton.isSelected = false
//            twentyPctButton.isSelected = false
//        } else if sender.titleLabel?.text == "20%" {
//             selectedTip = ".20"
//        twentyPctButton.isSelected = true
//            tenPctButton.isSelected = false
//            zeroPctButton.isSelected = false
//        }
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(selectedTip)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

