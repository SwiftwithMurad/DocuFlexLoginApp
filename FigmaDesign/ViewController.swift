//
//  ViewController.swift
//  FigmaDesign
//
//  Created by Mac on 09.11.24.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonTapped(_ sender: Any) {
     
    }
    
    @IBAction func createButtonTapped(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "Sign Up Controller") as! SignUpController
        navigationController?.show(controller, sender: nil)
        controller.sendDataBack = { UserData in
            self.emailTextField.text = UserData.email
            self.passwordTextField.text = UserData.password
            
        }
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "SetDetailsController") as! SetDetailsController
        navigationController?.show(controller, sender: nil)
    }
    
    
}

