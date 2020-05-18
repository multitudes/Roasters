//
//  MapVC.swift
//  Roasters
//
//  Created by Laurent B on 17/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit
import MapKit


class MapVC: UIViewController, MKMapViewDelegate ,CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        let mapView = MKMapView()

        mapView.frame = view.coordinateSpace.bounds
        mapView.center = view.center
        
        view.addSubview(mapView)
        determineMyCurrentLocation()
        

    }
    
    
    func determineMyCurrentLocation() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let userLocation: CLLocation
//        userLocation = locations[0] as CLLocation
//        print("user latitude = \(userLocation.coordinate.latitude)")
//        print("user longitude = \(userLocation.coordinate.longitude)")
    }
}

