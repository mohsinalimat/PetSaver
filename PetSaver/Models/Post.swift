//
//  Post.swift
//  PetSaver
//
//  Created by Boaz Froog on 15/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import Foundation
import MapKit

struct Post {
    
    var id: String?
    
    let user: User
    let imageUrl: String
    let caption: String
    let creationDate: Date
    
    let longitude: Double
    let latitude: Double
        
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        
        let secondsFrom1970 = dictionary["creationDate"] as? Double ?? 0
        self.creationDate = Date(timeIntervalSince1970: secondsFrom1970)
        
        self.longitude = dictionary["longitude"] as? Double ?? 0
        self.latitude = dictionary["latitude"] as? Double ?? 0
    }
}
