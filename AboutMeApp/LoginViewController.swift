//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Владислав Якунин on 24.12.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var UserNameTextField: UITextField!
    @IBOutlet var PasswordTextField: UITextField!
    
    private let user = "Vladislav"
    private let password = "123456"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard UserNameTextField.text == user, PasswordTextField.text == password else {
            showAlert(withTitle: "Неверный логин или пароль", andMessage: "Введите верный логин или пароль") {
                self.UserNameTextField.text = ""
                self.PasswordTextField.text = ""
            }
            return false
        }
        return true
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(withTitle: "Упс!", andMessage: "Ваше имя: \(user)")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Упс!", andMessage: "Ваш пароль: \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        UserNameTextField.text = ""
        PasswordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
