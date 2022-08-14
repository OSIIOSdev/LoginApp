//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Илья on 14.08.2022.
//

import UIKit

class GreetingViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var gradientView: UIView!
    @IBOutlet var greetingMessage: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    
    var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor.red.cgColor,
            UIColor.orange.cgColor,
        ]
        
        gradient.locations = [0, 0.7]
        return gradient
    }()
    
    //MARK: - properties
    var userName: String!
    
    //MARK: - ovveride functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getGreetingMessageSettings()
        getGradientViewSettings()
        
        logOutButton.tintColor = .white
    }
    
    //MARK: - private functions
    private func getGreetingMessageSettings() {
        greetingMessage.text = "Welcome, \(userName ?? "username")"
        greetingMessage.textColor = .white
    }
    
    private func getGradientViewSettings() {
        gradient.frame = gradientView.bounds
        gradientView.layer.addSublayer(gradient)
    }
}

    
