//
//  ViewController.swift
//  LogIn Menu
//
//  Created by Rashid Gaitov on 02.04.2022.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    var login = " "
    var password = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func loginButtonPressed() {
        
        login = loginTextField.text ?? " "
        password = passwordTextField.text ?? " "
        
        let alertController = UIAlertController(title: " ", message: " ", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Close", style: .default))
        
        if (login == "Login") && (password == "Password") {
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        } else {
            alertController.title = "Error!"
            alertController.message = "You have no access!"
            self.present(alertController, animated: true, completion: nil)
        }
        
    }
    
}


extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.loginTextField.resignFirstResponder()
        self.passwordTextField.resignFirstResponder()
        return true
    }
}
