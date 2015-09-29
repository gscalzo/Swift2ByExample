//
//  WeatherDaysForecastView.swift
//  PrettyWeather
//
//  Created by Giordano Scalzo on 03/02/2015.
//  Copyright (c) 2015 Effective Code. All rights reserved.
//

import Foundation
import Cartography

class WeatherDaysForecastView: UIView {
    static var HEIGHT: CGFloat { get { return 300 } }
    
    private var didSetupConstraints = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        style()
    }
    
    required init(coder aDecoder: NSCoder) {
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
private extension WeatherDaysForecastView{
    func setup(){
    }
}

// MARK: Layout
private extension WeatherDaysForecastView{
    func layoutView(){
        constrain(self) { view in
            view.height == WeatherDaysForecastView.HEIGHT
            return
        }
    }
}


// MARK: Style
private extension WeatherDaysForecastView{
    func style(){
        backgroundColor = UIColor.blueColor()
    }
}