//
//  RegisterViewController.swift
//  ASAP
//
//  Created by Giordano Scalzo on 16/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit
import LatoFont

class RegisterViewController: UIViewController {
    @IBOutlet var okButton: UIButton! {
        didSet {
            okButton.enabled = false
            okButton.titleLabel?.font = UIFont.latoFontOfSize(18)
        }
    }
    
    @IBOutlet var emailTextField: UITextField! {
        didSet {
            emailTextField.becomeFirstResponder()
            emailTextField.font = UIFont.latoFontOfSize(18)
        }
    }
    
    static func instantiate() -> RegisterViewController {
        return UIStoryboard(name: "Register", bundle: nil).instantiateInitialViewController() as! RegisterViewController
    }
    
    @IBAction func emailTextFieldChanged(sender: UITextField) {
        guard let text = sender.text else {
            return
        }
        okButton.enabled = text.isValidEmail()
    }
    
    @IBAction func signinTapped(sender: UIButton) {
        guard let text = emailTextField.text else {
            return
        }
        
        AppDelegate.appdelegate().userStore.setUserEmail(text)
        
        performSegueWithIdentifier("ShowEcommerceScene", sender: self)
    }

}
