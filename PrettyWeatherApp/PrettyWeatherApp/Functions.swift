//
//  Functions.swift
//  PrettyWeather
//
//  Created by Giordano Scalzo on 05/02/2015.
//  Copyright (c) 2015 Effective Code. All rights reserved.
//

import Foundation
import WeatherIconsKit

func iconStringFromIcon(icon: IconType, size: CGFloat) -> NSAttributedString {
    switch icon {
    case .i01d:
        return WIKFontIcon.wiDaySunnyIconWithSize(size).attributedString()
    case .i01n:
        return WIKFontIcon.wiNightClearIconWithSize(size).attributedString()
    case .i02d:
        return WIKFontIcon.wiDayCloudyIconWithSize(size).attributedString()
    case .i02n:
        return WIKFontIcon.wiNightCloudyIconWithSize(size).attributedString()
    case .i03d:
        return WIKFontIcon.wiDayCloudyIconWithSize(size).attributedString()
    case .i03n:
        return WIKFontIcon.wiNightCloudyIconWithSize(size).attributedString()
    case .i04d:
        return WIKFontIcon.wiCloudyIconWithSize(size).attributedString()
    case .i04n:
        return WIKFontIcon.wiCloudyIconWithSize(size).attributedString()
    case .i09d:
        return WIKFontIcon.wiDayShowersIconWithSize(size).attributedString()
    case .i09n:
        return WIKFontIcon.wiNightShowersIconWithSize(size).attributedString()
    case .i10d:
        return WIKFontIcon.wiDayRainIconWithSize(size).attributedString()
    case .i10n:
        return WIKFontIcon.wiNightRainIconWithSize(size).attributedString()
    case .i11d:
        return WIKFontIcon.wiDayThunderstormIconWithSize(size).attributedString()
    case .i11n:
        return WIKFontIcon.wiNightThunderstormIconWithSize(size).attributedString()
    case .i13d:
        return WIKFontIcon.wiSnowIconWithSize(size).attributedString()
    case .i13n:
        return WIKFontIcon.wiSnowIconWithSize(size).attributedString()
    case .i50d:
        return WIKFontIcon.wiFogIconWithSize(size).attributedString()
    case .i50n:
        return WIKFontIcon.wiFogIconWithSize(size).attributedString()
    }
    
}