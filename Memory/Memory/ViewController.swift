//
//  ViewController.swift
//  Memory
//
//  Created by Giordano Scalzo on 30/08/2015.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import UIKit

enum Difficulty {
    case Easy, Medium, Hard
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

private extension ViewController {
    func setup() {
        view.backgroundColor = .greenSea()
        
        buildButtonWithCenter(CGPoint(x: view.center.x, y: view.center.y/2.0),
            title: "EASY", color: .emerald(), action: "onEasyTapped:")
        buildButtonWithCenter(CGPoint(x: view.center.x, y: view.center.y),
            title: "MEDIUM", color: .sunflower(), action: "onMediumTapped:")
        buildButtonWithCenter(CGPoint(x: view.center.x, y: view.center.y*3.0/2.0),
            title: "HARD", color: .alizarin(), action: "onHardTapped:")
    }
    
    func buildButtonWithCenter(center: CGPoint, title: String, color: UIColor, action: Selector) {
        let button = UIButton()
        button.setTitle(title, forState: .Normal)
        
        button.frame = CGRect(origin: CGPointZero, size: CGSize(width: 200, height: 50))
        button.center = center
        button.backgroundColor = color
        button.setTitleColor(.whiteColor(), forState: .Normal)
        
        button.addTarget(self, action: action,
            forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }
}

extension ViewController {
    func onEasyTapped(sender: UIButton) {
        newGameDifficulty(.Easy)
    }
    
    func onMediumTapped(sender: UIButton) {
        newGameDifficulty(.Medium)
    }
    
    func onHardTapped(sender: UIButton) {
        newGameDifficulty(.Hard)
    }
    
    func newGameDifficulty(difficulty: Difficulty) {
        let gameViewController = MemoryViewController(difficulty: difficulty)
        presentViewController(gameViewController, animated: true, completion: nil)
    }
}