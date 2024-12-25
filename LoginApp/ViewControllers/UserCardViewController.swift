//
//  UserCardViewController.swift
//  AboutMeApp
//
//  Created by Владислав Якунин on 25.12.2024.
//

import UIKit

class UserCardViewController: UIViewController {

    var user: User!
    
    @IBOutlet var userPhoto: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var titleCompanyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupGradientView()
        title = user.person.fullName
        userPhoto.layer.cornerRadius = userPhoto.frame.width / 2
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        titleCompanyLabel.text = user.person.job.title
        departmentLabel.text = user.person.job.department
        jobTitleLabel.text = user.person.job.jobTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBioVC = segue.destination as? UserBioViewController
        userBioVC?.user = user
    }
}
