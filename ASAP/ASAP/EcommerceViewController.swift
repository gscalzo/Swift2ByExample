//
//  EcommerceViewController.swift
//  ASAP
//
//  Created by Giordano Scalzo on 17/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit
import SDWebImage

class EcommerceViewController: UICollectionViewController {
    let productStore = ProductStore(gateway: LocalProductGateway())
    private var products: [Product] = []

    static func instantiate() -> UIViewController {
        return UIStoryboard(name: "Ecommerce", bundle: nil).instantiateInitialViewController()!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ASAP"

        productStore.retrieve { [weak self] products in
            self?.products = products
            self?.collectionView?.reloadData()
        }
    }
}

extension EcommerceViewController {
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ProductCollectionViewCell
        
        let product = products[indexPath.row]
        cell.modelLabel.text = product.name
        cell.descriptionLabel.text = product.description
        cell.imageView.sd_setImageWithURL(product.imageURL)
        cell.priceLabel.text = "$\(product.price)"
        
        cell.backgroundColor = UIColor.clearColor()

        return cell
    }
}