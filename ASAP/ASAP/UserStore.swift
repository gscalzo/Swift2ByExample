//
//  UserStore.swift
//  ASAP
//
//  Created by Giordano Scalzo on 17/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import Foundation

typealias Email = String

class UserStore {
    private struct Constants {
        static let emailKey = "emailKey"
    }
    
    func setUserEmail(email: Email) {
        NSUserDefaults.standardUserDefaults().setObject(email, forKey: Constants.emailKey)
    }
    
    func userEmail() -> Email? {
        return  NSUserDefaults
            .standardUserDefaults()
            .objectForKey(Constants.emailKey) as? Email
    }
    
    func isUserSignedIn() -> Bool {
        return userEmail() != nil
    }
}