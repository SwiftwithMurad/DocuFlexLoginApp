//
//  SetDetailsController.swift
//  FigmaDesign
//
//  Created by Mac on 27.11.24.
//

import UIKit

class SetDetailsController: UIViewController {

    
    @IBOutlet weak var secondCheckboxButton: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    var must = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func checkboxButtonTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        must = sender.isSelected

        
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        if must {
            if let password = passwordField.text, password.count >= 8, !password.isEmpty,
               let confirmPassword = confirmPasswordField.text, confirmPassword.count >= 8, !confirmPassword.isEmpty  {
                if password == confirmPassword {
                    navigationController?.popViewController(animated: true)
                }
            }
        }
    }
    
    @IBAction func secondCheckboxButtonTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
//        if sender.isSelected {
//            sender.isSelected = false
//        } else {
//            sender.isSelected = true
//        }
    }
}
