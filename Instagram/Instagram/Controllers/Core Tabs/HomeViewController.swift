//
//  ViewController.swift
//  Instagram
//
//  Created by Jacob Perez on 1/19/23.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
    }
    private func handleNotAuthenticated() {
        // Check auth status
        if Auth.auth().currentUser == nil {
         // Show log in
            let loginVC = LogInViewController()
            loginVC.modalPresentationStyle = .fullScreen // So the user can't swipe it away
            present(loginVC, animated: false)
        }
    }
}

