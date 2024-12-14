//
//  SignUpController.swift
//  FigmaDesign
//
//  Created by Mac on 15.11.24.
//

import UIKit

struct UserData {
    var name: String
    var email: String
    var password: String
    var confirmation: String
}

class SignUpController: UIViewController {

    @IBOutlet weak var confirmPasswordField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var fullnameField: UITextField!
    
    var sendDataBack: ((UserData) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func signUpButtonTapped(_ sender: Any) {
        if let  name = fullnameField.text, !name.isEmpty,
           let email = emailField.text, !email.isEmpty,
           let password = passwordField.text, !password.isEmpty,
           let confirmation = confirmPasswordField.text, !confirmation.isEmpty {
            if password == confirmation {
                navigationController?.popViewController(animated: true)
                sendDataBack?(UserData.init(name: name, email: email, password: password, confirmation: confirmation))
            }
        }
    }
}
