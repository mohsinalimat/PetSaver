//
//  Post.swift
//  PetSaver
//
//  Created by Boaz Froog on 15/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import Foundation

struct Post {
    
    let user: User
    let imageUrl: String
    let caption: String
        
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
    }
}
