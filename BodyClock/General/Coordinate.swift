//
//  Coordinate.swift
//  BodyClock
//
//  Created by Jakub Łaszczewski on 12/11/2022.
//

import Foundation
import CoreLocation

struct Coordinate {
    let latitude: Double
    let longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    
    // MARK: - CoreLocation wrapper
    
    init(coordinate: CLLocationCoordinate2D) {
        latitude = coordinate.latitude
        longitude = coordinate.longitude
    }
    
    var locationCoordinate2D: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: CLLocationDegrees(floatLiteral: latitude),
            longitude: CLLocationDegrees(floatLiteral: longitude))
    }
}
