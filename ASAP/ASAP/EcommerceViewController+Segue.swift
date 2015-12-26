//
//  EcommerceViewController+Segue.swift
//  Ecommerce
//
//  Created by Giordano Scalzo on 12/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import Foundation
import UIKit

extension EcommerceViewController: SegueHandlerType {
    enum SegueIdentifier: String {
        case ShowCheckoutScene = "ShowCheckoutScene"
    }
    
    func showCheckoutScene() {
        performSegueWithIdentifier(.ShowCheckoutScene, sender: self)
    }
}

extension EcommerceViewController {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        switch segueIdentifierForSegue(segue) {
        case .ShowCheckoutScene:
            guard let checkoutViewController = segue.destinationViewController as? CheckoutViewController else {
                    return
            }
            checkoutViewController.cartStore = cartStore
        }
    }
}
