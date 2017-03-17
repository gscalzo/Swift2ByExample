//
//  CurrentWeatherView.swift
//  PrettyWeather
//
//  Created by Giordano Scalzo on 03/02/2015.
//  Copyright (c) 2015 Effective Code. All rights reserved.
//

import UIKit
import Cartography
import LatoFont
import WeatherIconsKit

class CurrentWeatherView: UIView {
    static var HEIGHT: CGFloat { get { return 160 } }
    
    private var didSetupConstraints = false
    private let cityLbl = UILabel()
    private let maxTempLbl = UILabel()
    private let minTempLbl = UILabel()
    private let iconLbl = UILabel()
    private let weatherLbl = UILabel()
    private let currentTempLbl = UILabel()
    
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
        addSubview(cityLbl)
        addSubview(currentTempLbl)
        addSubview(maxTempLbl)
        addSubview(minTempLbl)
        addSubview(iconLbl)
        addSubview(weatherLbl)
    }
}

// MARK: Layout
private extension CurrentWeatherView{
    func layoutView(){
        constrain(self) {
            $0.height == CurrentWeatherView.HEIGHT
        }
        constrain(iconLbl) {
            $0.top == $0.superview!.top
            $0.left == $0.superview!.left + 20
            $0.width == 30
            $0.width == $0.height
        }
        constrain(weatherLbl, iconLbl) {
            $0.top == $1.top
            $0.left == $1.right + 10
            $0.height == $1.height
            $0.width == 200
        }
        
        constrain(currentTempLbl, iconLbl) {
            $0.top == $1.bottom
            $0.left == $1.left
        }
        
        constrain(currentTempLbl, minTempLbl) {
            $0.bottom == $1.top
            $0.left == $1.left
        }
        
        constrain(minTempLbl) {
            $0.bottom == $0.superview!.bottom
            $0.height == 30
        }
        
        constrain(maxTempLbl, minTempLbl) {
            $0.top == $1.top
            $0.height == $1.height
            $0.left == $1.right + 10
        }
        constrain(cityLbl) {
            $0.bottom == $0.superview!.bottom
            $0.right == $0.superview!.right - 10
            $0.height == 30
            $0.width == 200
        }
    }
}

// MARK: Style
private extension CurrentWeatherView{
    func style(){
        iconLbl.textColor = UIColor.whiteColor()
        weatherLbl.font = UIFont.latoLightFontOfSize(20)
        weatherLbl.textColor = UIColor.whiteColor()
        
        currentTempLbl.font = UIFont.latoLightFontOfSize(96)
        currentTempLbl.textColor = UIColor.whiteColor()
        
        maxTempLbl.font = UIFont.latoLightFontOfSize(18)
        maxTempLbl.textColor = UIColor.whiteColor()
        
        minTempLbl.font = UIFont.latoLightFontOfSize(18)
        minTempLbl.textColor = UIColor.whiteColor()
        
        cityLbl.font = UIFont.latoLightFontOfSize(18)
        cityLbl.textColor = UIColor.whiteColor()
        cityLbl.textAlignment = .Right
    }
}

// MARK: Render
extension CurrentWeatherView{
    func render(weatherCondition: WeatherCondition){
        iconLbl.attributedText = iconStringFromIcon(weatherCondition.icon!, size: 20)
        weatherLbl.text = weatherCondition.weather
        
        var usesMetric = false
        if let localeSystem = NSLocale.currentLocale().objectForKey(NSLocaleUsesMetricSystem) as? Bool {
            usesMetric = localeSystem
        }
        
        if usesMetric {
            minTempLbl.text = "\(weatherCondition.minTempCelsius.roundToInt())°"
            maxTempLbl.text = "\(weatherCondition.maxTempCelsius.roundToInt())°"
            currentTempLbl.text = "\(weatherCondition.tempCelsius.roundToInt())°"
        } else {
            minTempLbl.text = "\(weatherCondition.minTempFahrenheit.roundToInt())°"
            maxTempLbl.text = "\(weatherCondition.maxTempFahrenheit.roundToInt())°"
            currentTempLbl.text = "\(weatherCondition.tempFahrenheit.roundToInt())°"
        }
        
        cityLbl.text = weatherCondition.cityName ?? ""
    }
}

