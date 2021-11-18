//
//  TheaterViewController.swift
//  TabBar
//
//  Created by yonghee lee on 2021/11/16.
//

import UIKit
import MapKit

class TheaterViewController: UIViewController{
    
    var param: NSDictionary!
    
    
    @IBOutlet var mp: MKMapView!
    
    override func viewDidLoad() {
        self.navigationItem.title = self.param["상영관명"] as? String
        
        let lat = (param?["위도"] as! NSString).doubleValue
        let lon = (param?["경도"] as! NSString).doubleValue
        
        let location = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let regionRadius: CLLocationDistance = 100
        let coordinateRegion = MKCoordinateRegion(center: location, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        self.mp.setRegion(coordinateRegion, animated: true)
    }
}
