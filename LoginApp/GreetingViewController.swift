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
    var userName: String!
    
    ///MARK: - ovveride functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingMessage.text = "Welcome, \(userName ?? "username")"
    }    

}
