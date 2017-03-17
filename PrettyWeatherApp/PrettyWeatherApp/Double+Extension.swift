//
//  Double+Extension.swift
//  PrettyWeather
//
//  Created by Giordano Scalzo on 05/02/2015.
//  Copyright (c) 2015 Effective Code. All rights reserved.
//

import Foundation
extension Double {
    func roundToInt() -> Int{
        return Int(round(self))
    }
}