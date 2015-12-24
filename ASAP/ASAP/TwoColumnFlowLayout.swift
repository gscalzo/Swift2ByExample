//
//  ColumnFlowLayout.swift
//  ASAP
//
//  Created by Giordano Scalzo on 24/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit

class TwoColumnFlowLayout: UICollectionViewFlowLayout {
     private struct Constants {
        static let NumberColumns = CGFloat(2.0)
        static let InteritemSpacing = CGFloat(1.0)
    }
    
    override func prepareLayout() {
        super.prepareLayout()
        
        configureItemSpacing()
        configureItemSize()
    }
}

private extension TwoColumnFlowLayout {
    func configureItemSpacing() {
        minimumInteritemSpacing = Constants.InteritemSpacing
        minimumLineSpacing = Constants.InteritemSpacing
    }
    
    func configureItemSize() {
        let itemSide = (collectionViewContentSize().width / Constants.NumberColumns) - (Constants.InteritemSpacing * 0.5)
        itemSize = CGSizeMake(itemSide, itemSide)
    }
}