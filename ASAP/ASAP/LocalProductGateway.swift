//
//  LocalProductGateway.swift
//  ASAP
//
//  Created by Giordano Scalzo on 24/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import Foundation

class LocalProductGateway: ProductGateway {
    func getProducts(completion: (String) -> Void) {
        
        let path = NSBundle.mainBundle().pathForResource("products", ofType: "json")
        
        do {
            completion(try String(contentsOfFile: path!, encoding: NSUTF8StringEncoding))
        } catch {
            completion("[:]")
        }
    }
}
