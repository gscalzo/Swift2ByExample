//
//  CheckoutViewController.swift
//  ASAP
//
//  Created by Giordano Scalzo on 24/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {    
    var cartStore: CartStore!
    
    @IBOutlet var tableView: UITableView!  {
        didSet {
            tableView.separatorInset = UIEdgeInsetsZero
        }
    }
    
    @IBOutlet var buyButton: UIButton!  {
        didSet {
            buyButton.titleLabel?.font = UIFont.latoFontOfSize(24)
        }
    }
    
    @IBAction func buyTapped() {
        cartStore.buy()
        
        let alert = UIAlertController(title: "Done", message: "Thank you for buying at ASAP!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { _ in
            self.navigationController?.popToRootViewControllerAnimated(false)
        }))
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    static func instantiate() -> UIViewController {
        return UIStoryboard(name: "Checkout", bundle: nil).instantiateInitialViewController()!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshTotal()
    }
    
}

private extension CheckoutViewController {
    func refreshTotal(){
        title = "Total: $\(cartStore.total)"
    }
}

extension CheckoutViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartStore.count()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let product = cartStore.allProducts()[indexPath.row]
        cell.selectionStyle = .None
        cell.textLabel?.font = UIFont.latoLightFontOfSize(15)
        cell.textLabel?.text = product.name
        cell.imageView?.sd_setImageWithURL(product.imageURL)
        
        return cell
    }
}

extension CheckoutViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .Default, title: "delete") {
            [weak self] action, index in
            guard let product = self?.cartStore.allProducts()[index.row] else {
                return
            }
            self?.cartStore?.removeProduct(product)
            self?.refreshTotal()
            tableView.reloadData()
        }
        return [delete]
    }
}