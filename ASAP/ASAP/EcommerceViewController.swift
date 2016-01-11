//
//  EcommerceViewController.swift
//  ASAP
//
//  Created by Giordano Scalzo on 17/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit
import SDWebImage
import BBBadgeBarButtonItem
import FontAwesomeKit

class EcommerceViewController: UICollectionViewController {
    let productStore = ProductStore(gateway: ServerProductGateway())
    private var products: [Product] = []
    let cartStore = CartStore(gateway:
        ServerCartGateway(userEmail: AppDelegate.appdelegate().userStore.userEmail()))

    static func instantiate() -> UIViewController {
        return UIStoryboard(name: "Ecommerce", bundle: nil).instantiateInitialViewController()!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ASAP"
        setupCart()
        
        productStore.retrieve { [weak self] products in
            self?.products = products
            self?.collectionView?.reloadData()
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        refreshCartCount()
        collectionView?.reloadData()
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
        
        if cartStore.containsProductID(product.id) {
            cell.backgroundColor = UIColor.lightGrayColor()
        } else {
            cell.backgroundColor = UIColor.clearColor()
        }
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let product = products[indexPath.row]
        
        if cartStore.containsProductID(product.id) {
            cartStore.removeProduct(product)
        } else {
            cartStore.addProduct(product)
        }
        refreshCartCount()
        collectionView.reloadData()
    }
}

extension EcommerceViewController {
    func setupCart() {
        let button = UIButton(type: .Custom)
        let icon = FAKFontAwesome.shoppingCartIconWithSize(20)
        button.setAttributedTitle(icon.attributedString(), forState: .Normal)
        button.addTarget(self, action: "cartButtonTapped:", forControlEvents: .TouchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        let cartBarButton = BBBadgeBarButtonItem(customUIButton: button)
        cartBarButton.badgeOriginX = 0
        cartBarButton.badgeOriginY = 0
        navigationItem.rightBarButtonItem = cartBarButton
    }
    
    func cartButtonTapped(sender: UIButton) {
        showCheckoutScene()
    }
    
    func refreshCartCount() {
        guard let cartBarButton = navigationItem.rightBarButtonItem as? BBBadgeBarButtonItem else {
            return
        }
        
        cartBarButton.badgeValue = "\(cartStore.count())"
    }
}