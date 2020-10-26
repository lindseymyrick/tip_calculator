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
    
    var billTotal: Double = 0.0
    var selectedTip: Double = 0.10
    var numberOfPeople = 2
    

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        
        let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
        
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentSign)!
       
        selectedTip = buttonTitleAsNumber / 100
        
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
//        let splitNumber = String(sender.value).dropLast(2)
//        splitNumberToDisplay =  String(splitNumber)
//        splitNumberLabel.text = splitNumberToDisplay
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        numberOfPeople = Int(sender.value)
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        var bill = billTextField.text!
        
        if bill != "" {
            billTotal = Double(bill)!
            
            let result = billTotal * (1 + selectedTip) / Double(numberOfPeople)
            
            let resultTo2DecimalPlaces = String(format: "%.2f", result)
            
            print(resultTo2DecimalPlaces)
        }
        print(selectedTip)
        print(numberOfPeople)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

