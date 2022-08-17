//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Илья on 14.08.2022.
//

import UIKit

class GreetingViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var greetingMessage: UILabel!
    
    //MARK: - properties
    var userName = ""
    
    //MARK: - ovveride methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getGreetingMessageSettings()
    }
    
    //MARK: - private methods
    private func getGreetingMessageSettings() {
        greetingMessage.text = "Welcome, \(userName)"
    }
}

    
