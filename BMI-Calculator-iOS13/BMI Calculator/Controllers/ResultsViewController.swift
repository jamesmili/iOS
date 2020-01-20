//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by James Militante on 2020-01-04.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // goes back to previous view (back to CalculateViewController)
        self.dismiss(animated: true, completion: nil)
    }
}
