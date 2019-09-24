//
//  Location.swift
//  PetSaver
//
//  Created by Boaz Froog on 24/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import Foundation

struct Location {
    let longitude: Double
    let latitude: Double
    
    init(longitude: Double, latitude: Double) {
        self.longitude = longitude
        self.latitude = latitude
    }
}
