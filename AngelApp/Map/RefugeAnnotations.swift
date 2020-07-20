//
//  RefugeAnnotations.swift
//  Tests
//
//  Created by helenepetitjean on 23/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import Foundation
import MapKit

class RefugeAnnotation: NSObject, MKAnnotation, Identifiable {
    var id = UUID()
    var title: String?
    var subtitle: String?
    var horaires: String?
    var coordinate: CLLocationCoordinate2D
    
    init(refuge: Refuge) {
        self.title = refuge.name
        self.subtitle = refuge.adresse
        self.horaires = refuge.horaires
        self.coordinate = CLLocationCoordinate2D(latitude: refuge.latitude, longitude: refuge.longitude)
    }
}
