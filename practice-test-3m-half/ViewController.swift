//
//  ViewController.swift
//  practice-test-3m-half
//
//  Created by mavluda on 18/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var eyeButton: UIButton!
    
    var eyePressed = true
    
    @IBAction func eyeButtonTapped(_ sender: Any) {
        var image = ""
        if eyePressed{
            image = "eye.slash"
            eyeButton.setImage(UIImage(systemName: image), for: .normal)
            eyeButton.tintColor = .systemGray2
            eyePressed = false
            passwordField.isSecureTextEntry = true
        }else{
            image = "eye"
            eyeButton.setImage(UIImage(systemName: image), for: .normal)
            eyePressed = true
            passwordField.isSecureTextEntry = false
        }
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        if !emailField.hasText || !passwordField.hasText{
            if !emailField.hasText{
                emailField.layer.borderColor = UIColor.red.cgColor
                emailField.layer.borderWidth = 1
                emailField.placeholder = "Fill the field"
            }
            if !passwordField.hasText{
                passwordField.layer.borderColor = UIColor.red.cgColor
                passwordField.layer.borderWidth = 1
                passwordField.placeholder = "Fill the field"
            }
            
        }
    }
    
    @IBAction func createNowTapped(_ sender: Any) {
        let vc: SecondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        passwordField.isSecureTextEntry = true
    }


}

