//
//  ViewController.swift
//  LoginApp
//
//  Created by Илья on 14.08.2022.
//
import UIKit

class MainViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.text = userName
    }
    
    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
    }
    
    //MARK: - UIAlertController
    private func showAlert(with title: String, and message: String) {
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alertMessage.addAction(okAction)
        
        present(alertMessage, animated: true)
    }
    
    //MARK: - undiwndSegue
    @IBAction func undiwndSegue(_ segue: UIStoryboardSegue) {
       
    }

}

