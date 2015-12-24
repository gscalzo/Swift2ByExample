//
//  ProductCollectionViewCell.swift
//  ASAP
//
//  Created by Giordano Scalzo on 24/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet var modelLabel: UILabel! {
        didSet {
            modelLabel.font = UIFont.latoFontOfSize(18)
        }
    }
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!  {
        didSet {
            descriptionLabel.font = UIFont.latoFontOfSize(18)
        }
    }
    @IBOutlet var priceLabel: UILabel! {
        didSet {
            priceLabel.font = UIFont.latoBoldFontOfSize(18)
        }
    }
}
