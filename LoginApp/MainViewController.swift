//
//  ViewController.swift
//  LoginApp
//
//  Created by Илья on 14.08.2022.
//
import UIKit

class MainViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    //MARK: - ovveride functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTF.text == "User" && passwordTF.text == "Password" {
            return true
        } else {
            showAlert(with: "Wrong data", and: "Please enter the correct data")
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? GreetingViewController else { return }
        
        welcomeVC.userName = userNameTF.text
    }
    
    //MARK: - IBAction
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
        userNameTF.text = ""
        passwordTF.text = ""
    }

}

