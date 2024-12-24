//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Владислав Якунин on 24.12.2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupGradientView()
        welcomeLabel.text = "Welcome, \(userName ?? "")."
    }
}

extension UIView {
    func setupGradientView() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [UIColor.white.cgColor, UIColor.systemRed.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0, 0.5, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
