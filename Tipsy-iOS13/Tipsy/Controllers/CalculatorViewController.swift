//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.1
    var split = 2
    var billTotal = 0.0
    var resultTo2DecimalPlaces = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        
        let buttonMinusPercent = String(buttonTitle.dropLast())
        
        let buttonTitleAsDouble = Double(buttonMinusPercent)!
        
        tip = buttonTitleAsDouble / 100
        print(tip)
        
        bill.endEditing(true)
        
    }
    
    @IBAction func stepValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        split = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billVal = bill.text!
        
        if billVal != ""{
            billTotal = Double(billVal)!
            
            let result = billTotal * (1 + tip) / Double(split)
            resultTo2DecimalPlaces = String(format: "%.2f", result)
            self.performSegue(withIdentifier: "calculateBill", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calculateBill" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.total = resultTo2DecimalPlaces
            destinationVC.label = "split between \(split), with \(tip)%."
        }
    }
}

