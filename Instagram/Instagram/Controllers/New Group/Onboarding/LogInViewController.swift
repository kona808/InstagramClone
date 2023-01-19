//
//  LogInViewController.swift
//  Instagram
//
//  Created by Jacob Perez on 1/19/23.
//

import UIKit

class LogInViewController: UIViewController {

    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }
    
    private let usernameEmailField: UITextField = {
        let field = UITextField() // Anonymous closure
        field.placeholder = "Username or Email.."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    private let passwordField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        field.placeholder = "Password.."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    private let loginButton: UIButton = {
        let button = UIButton ( )
        button.setTitle("Log In", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.cornerRadius
        button.backgroundColor = .systemBlue
        button.setTitleColor (.white, for: .normal)
        return button
    }()
    private let termsButton: UIButton = {
        return UIButton()
    }()
    private let privacyButton: UIButton = {
        return UIButton()
    }()
    private let createAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle(.label, for: .normal) // .label adapts light/ dark mode
        button.setTitle("New User? Create an Account", for: .normal)
        return button
    }()
    private let headerView: UIView = {
        let header = UIView()
        header.clipsToBounds = true
        return header
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        view.backgroundColor = .systemBackground
    }
    override func viewDidLayoutSubviews() {
        // assign frames
        headerView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.height / 3.0)
    }
    private func addSubviews() {
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(headerView)
        view.addSubview(createAccountButton)
    }
     // @objc to be exposed to buttons
    @objc private func didTapLoginButton() {
        
    }
    @objc private func didTapTermsButton() {
        
    }
    @objc private func didTapPrivacyButton() {
        
    }
    @objc private func didTapCreateAccountButton() {
        
    }
}
