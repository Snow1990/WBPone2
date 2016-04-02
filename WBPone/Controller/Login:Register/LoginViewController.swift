//
//  LoginViewController.swift
//  ParseTutorial
//
//  Created by Ron Kliffer on 3/6/15.
//  Copyright (c) 2015 Ron Kliffer. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let tabViewMainSegue = "LoginSuccesful"
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Actions
    @IBAction func logInPressed(sender: AnyObject) {
        if let user = userTextField.text, password = passwordTextField.text {
            UserInfo.logInWithUsernameInBackground(user, password: password) { user, error in
                if user != nil {
                    print("logIn")
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let main = storyboard.instantiateViewControllerWithIdentifier("HomePage")
                    UIApplication.sharedApplication().keyWindow?.rootViewController = main
                } else if let error = error {
                    self.showErrorView(error)
                }
            }
        }

    }
}
