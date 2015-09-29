//
//  CurrentWeatherView.swift
//  PrettyWeather
//
//  Created by Giordano Scalzo on 03/02/2015.
//  Copyright (c) 2015 Effective Code. All rights reserved.
//

import UIKit
import Cartography

class CurrentWeatherView: UIView {
    static var HEIGHT: CGFloat { get { return 160 } }
    
    private var didSetupConstraints = false
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        style()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        if didSetupConstraints {
            super.updateConstraints()
            return
        }
        layoutView()
        super.updateConstraints()
        didSetupConstraints = true
    }
}

// MARK: Setup
private extension CurrentWeatherView{
    func setup(){
    }
}

// MARK: Layout
private extension CurrentWeatherView{
    func layoutView(){
        constrain(self) {
            $0.height == CurrentWeatherView.HEIGHT
        }
    }
}

// MARK: Style
private extension CurrentWeatherView{
    func style(){
        backgroundColor = UIColor.redColor()
    }
}
