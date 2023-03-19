//
//  SecondViewController.swift
//  practice-test-3m-half
//
//  Created by mavluda on 18/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var mobileNumberField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var eyeButton: UIButton!
    
    private func checkTextField(_ field: UITextField){
        if field.text?.isEmpty ?? true{
            field.layer.borderColor = UIColor.red.cgColor
            field.layer.borderWidth = 1
            field.placeholder = "Заполните поле"
        }
    }
    
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
    
    @IBAction func loginTapped(_ sender: Any) {
        if usernameField.text?.isEmpty ?? true || emailField.text?.isEmpty ?? true || mobileNumberField.text?.isEmpty ?? true || passwordField.text?.isEmpty ?? true{
            checkTextField(usernameField)
            checkTextField(mobileNumberField)
            checkTextField(emailField)
            checkTextField(passwordField)
        }else{
            let vc: ThirdViewController = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
            vc.email = emailField.text ?? ""
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordField.isSecureTextEntry = true
        
    }

}
