//
//  MemoryViewController.swift
//  Memory
//
//  Created by Giordano Scalzo on 30/08/2015.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import UIKit

class MemoryViewController: UIViewController {

    init(difficulty: Difficulty) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}