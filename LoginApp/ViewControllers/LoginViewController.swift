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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserNameTextField.text = user.login
        PasswordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? TabBarController
        tabBarController?.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard UserNameTextField.text == user.login, PasswordTextField.text == user.password else {
            showAlert(
                withTitle: "Неверный логин или пароль",
                andMessage: "Введите верный логин или пароль"
            )
            return false
        }
        return true
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Упс!", andMessage: "Ваше имя: \(user.login)")
        : showAlert(withTitle: "Упс!", andMessage: "Ваш пароль: \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        UserNameTextField.text = user.login
        PasswordTextField.text = user.password
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.PasswordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
