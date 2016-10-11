//
//  MapDetail.swift
//  ProudMD
//
//  Created by Leah Headd on 4/22/16.
//  Copyright © 2016 CS470. All rights reserved.
//

import UIKit
import Foundation
import MapKit

class MapDetail: NSObject, MKAnnotation {
    let title: String?
    let type: String
    let address: String
    let phone: String
    let web: String
    let notes: String
    let coordinates: CLLocationCoordinate2D
    
    init(name: String, address: String, phone: String, website: String, description: String, type: String, coordinates: CLLocationCoordinate2D) {
        self.type = type
        self.title = name
        self.address = address
        self.phone = phone
        self.web = website
        self.notes = description
        self.coordinates = coordinates

        super.init()
    }
    
    var coordinate: CLLocationCoordinate2D {
        return coordinates
    }
    
    func pinColor() -> MKPinAnnotationColor  {
        switch type {
        case "planned_parenthood":
            return .Green
        case "doctor","psych_facility":
            return .Purple
        default:
            return .Red
        }
    }
    
}
