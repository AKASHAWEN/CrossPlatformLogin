//
//  ViewController.swift
//  TwitterLogin
//
//  Created by Yuchao Chen on 15/10/15.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit
import Parse
import ParseTwitterUtils


class ViewController: UIViewController, PFLogInViewControllerDelegate {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // test for the twitter login
        
        
        
        
        
        //
        if (PFUser.currentUser() == nil) {
            let loginViewController = PFLogInViewController()
            loginViewController.delegate = self
            loginViewController.fields = [.UsernameAndPassword, .LogInButton, .SignUpButton, .PasswordForgotten, .DismissButton, .Twitter]
            
            loginViewController.emailAsUsername = true
            self.presentViewController(loginViewController, animated: false, completion: nil)
        }
    }

}

