//
//  CheckoutViewController.swift
//  ASAP
//
//  Created by Giordano Scalzo on 24/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {    
    var cartStore: CartStore!

    static func instantiate() -> UIViewController {
        return UIStoryboard(name: "Checkout", bundle: nil).instantiateInitialViewController()!
    }
}
