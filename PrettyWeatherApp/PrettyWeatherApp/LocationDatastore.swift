//
//  LocationDatastore.swift
//  PrettyWeather
//
//  Created by Giordano Scalzo on 05/02/2015.
//  Copyright (c) 2015 Effective Code. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let lat: Double
    let lon: Double
}

class LocationDatastore: NSObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    
    typealias LocationClosure = (Location) -> Void
    private let onLocationFound: LocationClosure
    
    init(closure: LocationClosure){
        onLocationFound = closure
        super.init()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        startUpdating()
    }
    
    
    private func startUpdating() {
        locationManager.startUpdatingLocation()
    }
    
    private func stopUpdating() {
        locationManager.stopUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        locationManager.stopUpdatingLocation()
        dispatch_async(dispatch_get_main_queue()){
            self.onLocationFound(Location(lat: 37.3175, lon: 122.0419))
        }
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locationArray = locations as NSArray
        let locationObj = locationArray.lastObject as! CLLocation
        let coord = locationObj.coordinate
        
        dispatch_async(dispatch_get_main_queue()){
            self.onLocationFound(Location(lat: coord.latitude, lon: coord.longitude))
        }
        
        stopUpdating()
    }
    
    func locationManager(manager: CLLocationManager,
        didChangeAuthorizationStatus status: CLAuthorizationStatus) {
            switch status {
            case .Restricted:
                NSLog("Denied access: Restricted Access to location")
            case .Denied:
                NSLog("Denied access: User denied access to location")
            case .NotDetermined:
                NSLog("Denied access: Status not determined")
            default:
                NSLog("Allowed to location Access")
                startUpdating()
            }
    }
}