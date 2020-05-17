//
//  MapVC.swift
//  Roasters
//
//  Created by Laurent B on 17/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        let mapView = MKMapView()

        mapView.frame = view.coordinateSpace.bounds
        mapView.center = view.center
        
        view.addSubview(mapView)
    }
}
