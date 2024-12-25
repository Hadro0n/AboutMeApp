//
//  UserBioViewController.swift
//  AboutMeApp
//
//  Created by Владислав Якунин on 25.12.2024.
//

import UIKit

class UserBioViewController: UIViewController {

    var user: User!
    
    @IBOutlet var aboutMe: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupGradientView()
        title = "\(user.person.fullName) - биография"
        aboutMe.text = user.person.bio
    }
}
