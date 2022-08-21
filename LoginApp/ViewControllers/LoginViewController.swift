//
//  ViewController.swift
//  LoginApp
//
//  Created by Илья on 14.08.2022.
//
import UIKit

class LoginViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "User"
    private let password = "Password"
    
    
    //MARK: - override methods
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTF.text == userName && passwordTF.text == password {
            return true
        } else {
            showAlert(with: "Invalid login or password", and: "Please enter correct login and password")
            clearTF()
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        
        greetingVC.userName = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBAction
    @IBAction func forgotNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your name is \(userName) 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is \(password) 😉")
    }
    
    @IBAction func undiwndSegue(_ segue: UIStoryboardSegue) {
        clearTF()
    }
    
    //MARK: - UIAlertController
    private func showAlert(with title: String, and message: String) {
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alertMessage.addAction(okAction)
        
        present(alertMessage, animated: true)
    }
    
    //MARK: - private methods
    private func clearTF() {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

