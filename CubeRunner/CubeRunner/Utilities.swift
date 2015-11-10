//
//  Utilities.swift
//  CubeRunner
//
//  Created by Giordano Scalzo on 10/11/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import Foundation
func execAfter(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

func execInMainThread(closure:()->()) {
    dispatch_async(dispatch_get_main_queue(),closure)
}