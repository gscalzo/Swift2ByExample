//
//  EcommerceViewController.swift
//  ASAP
//
//  Created by Giordano Scalzo on 17/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit

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
        
        switch arc4random_uniform(4) {
        case 0:
            cell.backgroundColor = UIColor.redColor()
        case 1:
            cell.backgroundColor = UIColor.greenColor()
        case 2:
            cell.backgroundColor = UIColor.blueColor()
        default:
            cell.backgroundColor = UIColor.orangeColor()
        }

        return cell
    }
}