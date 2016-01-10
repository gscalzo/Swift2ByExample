//
//  ServerProductGateway.swift
//  Ecommerce
//
//  Created by Giordano Scalzo on 03/01/2016.
//  Copyright © 2016 Giordano Scalzo. All rights reserved.
//

import Foundation

class ServerProductGateway: ProductGateway {
    func getProducts(completion: (String) -> Void) {
        
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithURL(EndPoint.Products.url()) {
            (data, response, error) -> Void in
            
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            
            guard let data = data,
                let products = NSString(data: data,
                    encoding: NSUTF8StringEncoding) as? String else {
                    return
            }
            
            dispatch_async(dispatch_get_main_queue()) {
                completion(products)
            }
        }
        
        task.resume()
    }
}
