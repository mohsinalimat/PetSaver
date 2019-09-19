//
//  Comment.swift
//  PetSaver
//
//  Created by Boaz Froog on 18/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import Foundation

struct Comment {
    
    let user: User
    
    let text: String
    let uid: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
