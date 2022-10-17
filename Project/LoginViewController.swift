//
//  LoginViewController.swift
//  Project
//
//  Created by Riya Suvagia on 10/9/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var textLabelLogin: UILabel!
    @IBOutlet weak var textLabelEmail: UILabel!
    @IBOutlet weak var textLabelPassword: UILabel!
    
    
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldPassword.isSecureTextEntry = true
        
        Auth.auth().addStateDidChangeListener() {
            auth, user in
            if user != nil {
                self.performSegue(withIdentifier: "LoginSegue", sender: nil)
                self.textFieldEmail.text = nil
                self.textFieldPassword.text = nil
            }
        }
    }
   
    @IBAction func loginButtonPressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: textFieldEmail.text!, password: textFieldPassword.text!) {
            authResult, error in
            if let error = error as NSError? {
                self.errorMessage.text = "\(error.localizedDescription)"
            } else {
                self.errorMessage.text = ""
            }
        }
    }

    @IBAction func createAcctButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Register",
                                      message:"Register",
                                      preferredStyle: .alert)
        
        alert.addTextField() { tfEmail in
            tfEmail.placeholder = "Enter your email"
        }
        
        alert.addTextField() { tfPassword in
            tfPassword.isSecureTextEntry = true
            tfPassword.placeholder = "Enter your password"
        }
        
        let saveAction = UIAlertAction(title: "Save", style: .default) {
            _ in
            let emailField = alert.textFields![0]
            let passwordField = alert.textFields![1]
            
            // create a new user here
            Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!) {
                authResult, error in
                if let error = error as NSError? {
                    self.errorMessage.text = "\(error.localizedDescription)"
                } else {
                    self.errorMessage.text = ""
                }
            }
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert,animated: true)
        
        
    }
}

