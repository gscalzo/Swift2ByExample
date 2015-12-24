//
//  SegueHandlerType.swift
//  Ecommerce
//
//  Created by Giordano Scalzo on 12/12/2015.
//  Copyright © 2015 Giordano Scalzo. All rights reserved.
//

import Foundation
import UIKit

protocol SegueHandlerType {
    typealias SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String {
    
    func performSegueWithIdentifier(segueIdentifier: SegueIdentifier, sender: AnyObject?){
        performSegueWithIdentifier(segueIdentifier.rawValue, sender: sender)
    }
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier,
            segueIdentifier = SegueIdentifier(rawValue: identifier)
            else {fatalError("Invalid segue identifier \(segue.identifier)")}
        return segueIdentifier
    }
}