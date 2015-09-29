//
//  PrettyWeatherViewController.swift
//  PrettyWeatherApp
//
//  Created by Giordano Scalzo on 26/09/2015.
//  Copyright © 2015 Effective Code Ltd. All rights reserved.
//

import UIKit
import Cartography

class PrettyWeatherViewController: UIViewController {
    static var INSET: CGFloat { get { return 20 } }

    private let backgroundView = UIImageView()
    private let scrollView = UIScrollView()
    private let currentWeatherView = CurrentWeatherView(frame: CGRectZero)
    private let hourlyForecastView = WeatherHourlyForecastView(frame: CGRectZero)
    private let daysForecastView = WeatherDaysForecastView(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        layoutView()
        style()
        render(UIImage(named: "DefaultImage"))
    }
}

// MARK: Setup
private extension PrettyWeatherViewController{
    func setup(){
        backgroundView.contentMode = .ScaleAspectFill
        backgroundView.clipsToBounds = true
        view.addSubview(backgroundView)
        scrollView.showsVerticalScrollIndicator = false
        scrollView.addSubview(currentWeatherView)
        scrollView.addSubview(hourlyForecastView)
        scrollView.addSubview(daysForecastView)
        view.addSubview(scrollView)
    }
}

// MARK: Layout
extension PrettyWeatherViewController{
    func layoutView() {
        constrain(backgroundView) {
            $0.edges ==  $0.superview!.edges
        }
        
        constrain(scrollView) {
            $0.edges ==  $0.superview!.edges
        }
        
        constrain(currentWeatherView) { view in
            view.width == view.superview!.width
            view.centerX == view.superview!.centerX
        }
        
        constrain(hourlyForecastView, currentWeatherView) { view, view2 in
            view.top == view2.bottom + PrettyWeatherViewController.INSET
            view.width == view.superview!.width
            view.centerX == view.superview!.centerX
        }
        
        constrain(daysForecastView, hourlyForecastView) { view, view2 in
            view.top == view2.bottom
            view.width == view2.width
            view.bottom == view.superview!.bottom - PrettyWeatherViewController.INSET
            view.centerX == view.superview!.centerX
        }
        
        let currentWeatherInsect: CGFloat = view.frame.height - CurrentWeatherView.HEIGHT - PrettyWeatherViewController.INSET

        constrain(currentWeatherView) {
            $0.top == $0.superview!.top + currentWeatherInsect
        }
    }
}

// MARK: Style
private extension PrettyWeatherViewController{
    func style(){
    }
}

// MARK: Render
private extension PrettyWeatherViewController{
    func render(image: UIImage?){
        if let image = image {
            backgroundView.image = image
        }
    }
}
