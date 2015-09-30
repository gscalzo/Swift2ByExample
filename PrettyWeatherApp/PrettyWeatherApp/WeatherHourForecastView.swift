//
//  WeatherHourForecastView.swift
//  PrettyWeather
//
//  Created by Giordano Scalzo on 04/02/2015.
//  Copyright (c) 2015 Effective Code. All rights reserved.
//

import Cartography
import WeatherIconsKit

class WeatherHourForecastView: UIView {
    private var didSetupConstraints = false
    private let iconLabel = UILabel()
    private let hourLabel = UILabel()
    private let tempsLabel = UILabel()
    
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
private extension WeatherHourForecastView{
    func setup(){
        addSubview(iconLabel)
        addSubview(hourLabel)
        addSubview(tempsLabel)
    }
}

// MARK: Layout
private extension WeatherHourForecastView{
    func layoutView() {
        constrain(iconLabel) {
            $0.center == $0.superview!.center
            $0.height == 50
        }
        constrain(hourLabel) {
            $0.centerX == $0.superview!.centerX
            $0.top == $0.superview!.top
        }
        constrain(tempsLabel) {
            $0.centerX == $0.superview!.centerX
            $0.bottom == $0.superview!.bottom
        }
    }
}

// MARK: Style
private extension WeatherHourForecastView{
    func style(){
        iconLabel.textColor = UIColor.whiteColor()
        hourLabel.font = UIFont.latoFontOfSize(20)
        hourLabel.textColor = UIColor.whiteColor()
        tempsLabel.font = UIFont.latoFontOfSize(20)
        tempsLabel.textColor = UIColor.whiteColor()
    }
}


// MARK: Render
extension WeatherHourForecastView{
    func render(weatherCondition: WeatherCondition){
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        hourLabel.text = dateFormatter.stringFromDate(weatherCondition.time)
        iconLabel.attributedText = iconStringFromIcon(weatherCondition.icon!, size: 30)
        
        var usesMetric = false
        if let localeSystem = NSLocale.currentLocale().objectForKey(NSLocaleUsesMetricSystem) as? Bool {
            usesMetric = localeSystem
        }
        
        if usesMetric {
            tempsLabel.text = "\(weatherCondition.minTempCelsius.roundToInt())° \(weatherCondition.maxTempCelsius.roundToInt())°"
        } else {
            tempsLabel.text = "\(weatherCondition.minTempFahrenheit.roundToInt())° \(weatherCondition.maxTempFahrenheit.roundToInt())°"
        }
    }
}
