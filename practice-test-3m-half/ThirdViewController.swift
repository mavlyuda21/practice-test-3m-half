//
//  ThirdViewController.swift
//  practice-test-3m-half
//
//  Created by mavluda on 18/3/23.
//

import UIKit

class ThirdViewController: UIViewController {

    var email = ""
    
    @IBOutlet weak var emailField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.text = email
    }

}
