//
//  CartStore.swift
//  ASAP
//
//  Created by Giordano Scalzo on 24/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import Foundation

class CartStore {
    private var products = [String:Product]()
    private let gateway: CartGateway
        
    init(gateway: CartGateway) {
        self.gateway = gateway
    }
    
    func containsProductID(productID: String) -> Bool {
        return products[productID] != nil
    }
    
    func addProduct(product: Product) {
        products[product.id] = product
        gateway.addProductID(product.id)
    }
    
    func removeProduct(product: Product) {
        products.removeValueForKey(product.id)
        gateway.removeProductID(product.id)
    }
    
    func buy() {
        products = [:]
        gateway.buy()
    }
    
    func count() -> Int {
        return products.count
    }
    
    var total: Double {
        get {
            return products.values.reduce(0) { partial, product in
                return partial + product.price
            }
        }
    }
    
    func allProducts() -> [Product] {
        return [Product](products.values)
    }
}