//
//  UIViewController+Extra.swift
//  Memory
//
//  Created by Giordano Scalzo on 23/12/2014.
//  Copyright (c) 2014 Swift by Example. All rights reserved.
//

import UIKit

extension UIViewController {
    func execAfter(delay: Double, block: () -> Void) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), block)
    }
}