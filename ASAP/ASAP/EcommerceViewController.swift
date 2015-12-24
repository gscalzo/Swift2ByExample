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
    
    static func instantiate() -> UIViewController {
        return UIStoryboard(name: "Ecommerce", bundle: nil).instantiateInitialViewController()!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ASAP"
    }
}

extension EcommerceViewController {
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ProductCollectionViewCell
        
        cell.modelLabel.text = "Ex Model"
        cell.descriptionLabel.text = "Ex Description"
        cell.imageView.sd_setImageWithURL(NSURL(string: "http://lorempixel.com/400/400/food/")!)
        cell.priceLabel.text = "$123"
        
        cell.backgroundColor = UIColor.clearColor()

        return cell
    }
}