//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Владислав Якунин on 24.12.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupGradientView()
        welcomeLabel.text = """
        Добро пожаловать, \(user.login)!
        Меня зовут \(user.person.fullName).
        """
    }
}
