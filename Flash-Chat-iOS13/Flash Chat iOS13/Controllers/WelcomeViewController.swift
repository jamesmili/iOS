//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        // hides nav bar in welcome page
        navigationController?.isNavigationBarHidden = true
    }
    
    // when user goes to the next view we show nav bar
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = K.appName
    }
    

}
