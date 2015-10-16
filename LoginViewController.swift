//
//  LoginViewController.swift
//  TwitterLogin
//
//  Created by Yuchao Chen on 15/10/15.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit
import Parse
import ParseTwitterUtils


class LoginViewController: UIViewController {
    @IBOutlet weak var username: UITextField!

    @IBOutlet weak var password: UITextField!
    @IBAction func loginBtn(sender: UIButton) {
        
        var user = PFUser()
        user.username = username.text
        user.password = password.text
        
        
        PFTwitterUtils.logInWithBlock { (user, error) -> Void in
            if let user = user {
                print("loggin successful")
            } else {
                print(error)
            }
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
