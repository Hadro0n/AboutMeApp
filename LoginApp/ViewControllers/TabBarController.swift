//
//  TabBarControllerViewController.swift
//  AboutMeApp
//
//  Created by Владислав Якунин on 25.12.2024.
//

import UIKit

class TabBarController: UITabBarController {

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        configureTabBar()
    }

    private func configureTabBar() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userCardVC = navigationVC.topViewController as? UserCardViewController
                userCardVC?.user = user
            }
        }
    }
    
}
