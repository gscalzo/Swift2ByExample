//
//  LocalCartGateway.swift
//  Ecommerce
//
//  Created by Giordano Scalzo on 07/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import Foundation

class ServerCartGateway: CartGateway {
    private let userEmail: String?
    
    init(userEmail: String?) {
        self.userEmail = userEmail
    }
    
    func addProductID(productID: String){
        guard let userEmail = userEmail else {
            return
        }
        
        requestMethod("POST", URL: EndPoint.Cart(userEmail: userEmail,
            productID: productID).url())
    }
    
    func removeProductID(productID: String){
        guard let userEmail = userEmail else {
            return
        }
        
        requestMethod("DELETE", URL: EndPoint.Cart(userEmail: userEmail,
            productID: productID).url())
    }
    
    func buy() {
        guard let userEmail = userEmail else {
            return
        }
        
        requestMethod("POST", URL: EndPoint.Orders(userEmail: userEmail).url())
    }
    
    
    private func requestMethod(method: String, URL: NSURL){
        let session = NSURLSession.sharedSession()
        
        let request = NSMutableURLRequest(URL:URL)
        request.HTTPMethod = method
        
        let task = session.dataTaskWithRequest(request) {
            (data, response, error) -> Void in
            
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            
        }
        
        task.resume()
    }
}