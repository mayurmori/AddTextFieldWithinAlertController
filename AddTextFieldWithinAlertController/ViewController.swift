//
//  ViewController.swift
//  AddTextFieldWithinAlertController
//
//  Created by Mayur Mori on 16/06/20.
//  Copyright © 2020 Mayur Mori. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnLogin_Clicked(_ sender: UIButton) {
        var txtFieldUserName: UITextField?
        var txtFieldPassword: UITextField?
        
        let alertController = UIAlertController(title: "Log in", message: "Please enter your credentials", preferredStyle: .alert)
        
        let loginAction = UIAlertAction(title: "Log in", style: .default) {(action) -> Void in
            if let username = txtFieldUserName?.text {
                print("Username = \(username)")
            } else {
                print("No Username entered")
            }
            
            if let password = txtFieldPassword?.text {
                print("Password = \(password)")
            } else {
                print("No password entered")
            }
        }
        
        alertController.addTextField {(txtUsername) -> Void in
            txtFieldUserName = txtUsername
            txtFieldUserName?.placeholder = "<Enter your UserName here>"
        }
        alertController.addTextField {(txtPassword) -> Void in
            txtFieldPassword = txtPassword
            txtFieldPassword?.placeholder = "<Enter your Password here>"
            txtFieldPassword?.isSecureTextEntry = true
        }
        alertController.addAction(loginAction)
        present(alertController, animated: true, completion: nil)
    }
}
