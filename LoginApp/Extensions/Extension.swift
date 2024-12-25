//
//  Extension.swift
//  AboutMeApp
//
//  Created by Владислав Якунин on 25.12.2024.
//

import UIKit

extension UIView {
    func setupGradientView() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [UIColor.white.cgColor, UIColor.systemBlue.cgColor, UIColor.systemRed.cgColor]
        gradient.locations = [0, 0.5, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
