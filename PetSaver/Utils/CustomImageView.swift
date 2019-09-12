//
//  CustomImageView.swift
//  PetSaver
//
//  Created by Boaz Froog on 12/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {
    
    var lastURLUsedToLoadImage: String?
    
    func loadImage(urlString: String) {
        lastURLUsedToLoadImage = urlString
        
        self.image = nil
    }
}
