//
//  AppDelegate.swift
//  ASAP
//
//  Created by Giordano Scalzo on 16/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    class func appdelegate() -> AppDelegate {
        return UIApplication.sharedApplication().delegate as! AppDelegate
    }
    
    var userStore = UserStore()
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName : UIFont.latoBoldFontOfSize(18)]
        
        let initialViewController: UIViewController
        
        if !AppDelegate.appdelegate().userStore.isUserSignedIn() {
            initialViewController = RegisterViewController.instantiate()
        } else {
            initialViewController = EcommerceViewController.instantiate()
        }
        
        self.window?.rootViewController = initialViewController
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

