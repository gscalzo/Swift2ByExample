//
//  EndPoint.swift
//  Ecommerce
//
//  Created by Giordano Scalzo on 03/01/2016.
//  Copyright © 2016 Giordano Scalzo. All rights reserved.
//

import Foundation

struct BaseURL {
    private static var baseURL: NSURL {
        return NSURL(string: "http://localhost:8888")!
    }
    static func appending(component: String) -> NSURL {
        return baseURL.URLByAppendingPathComponent(component)
    }

}

enum EndPoint {
    case Products
    case Cart(userEmail: String, productID: String)
    case Orders(userEmail: String)
    
    func url() -> NSURL {
        switch self {
        case .Products:
            return BaseURL.appending("/products")
        case .Cart(userEmail: let userEmail, productID: let productID):
            return BaseURL.appending("/customer/\(userEmail)/cart/\(productID)")
        case .Orders(userEmail: let userEmail):
            return BaseURL.appending("/customer/\(userEmail)/orders")
        }
    }
}