//
//  UIColor+Flat.swift
//  Memory
//
//  Created by Giordano Scalzo on 22/12/2014.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import UIKit

extension UIColor {
    class func greenSea() -> UIColor {
        return .colorComponents((22, 160, 133))
    }
    
    class func emerald() -> UIColor {
        return .colorComponents((46, 204, 113))
    }
    
    class func sunflower() -> UIColor {
        return .colorComponents((241, 196, 15))
    }
    
    class func alizarin() -> UIColor {
        return .colorComponents((231, 76, 60))
    }
}

private extension UIColor {
    class func colorComponents(components: (CGFloat, CGFloat, CGFloat)) -> UIColor {
        return UIColor(red: components.0/255, green: components.1/255, blue: components.2/255, alpha: 1)
    }
}