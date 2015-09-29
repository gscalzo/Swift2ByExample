//
//  FlickrDatastore.swift
//  PrettyWeather
//
//  Created by Giordano Scalzo on 05/02/2015.
//  Copyright (c) 2015 Effective Code. All rights reserved.
//

import FlickrKit

class FlickrDatastore {
    private let OBJECTIVE_FLICKR_API_KEY = "CREATE_API_KEY"
    private let OBJECTIVE_FLICKR_API_SHARED_SECRET = "CREATE_SHARED_SECRET"
    private let GROUP_ID = "1463451@N25"
    
    func retrieveImageAtLat(lat: Double, lon: Double, closure: (image: UIImage?) -> Void){
        let fk = FlickrKit.sharedFlickrKit()
        fk.initializeWithAPIKey(OBJECTIVE_FLICKR_API_KEY, sharedSecret: OBJECTIVE_FLICKR_API_SHARED_SECRET)
        
        fk.call("flickr.photos.search", args: [
            "group_id": GROUP_ID,
            "lat": "\(lat)",
            "lon": "\(lon)",
            "radius": "10"
            ], maxCacheAge: FKDUMaxAgeOneHour) { (response, error) -> Void in
                self.extractImageFk(fk, response: response,
                    error: error,
                    closure: closure)
        }
    }
    private func extractImageFk(fk: FlickrKit, response: AnyObject?,
        error: NSError?, closure: (image: UIImage?) -> Void) {
            if let response = response as? [String:AnyObject],
                photos = response["photos"] as? [String:AnyObject],
                listOfPhotos: AnyObject = photos["photo"]
                where listOfPhotos.count > 0 {
                    let randomIndex = Int(arc4random_uniform(UInt32(listOfPhotos.count)))
                    let photo = listOfPhotos[randomIndex] as! [String:AnyObject]
                    let url = fk.photoURLForSize(FKPhotoSizeMedium640,
                        fromPhotoDictionary: photo)
                    let image = UIImage(data: NSData(contentsOfURL: url)!)
                    dispatch_async(dispatch_get_main_queue()){
                        closure(image: image!)
                    }
            } else {
                print(error)
                print(response)
            }
    }
}