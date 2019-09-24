//
//  ImageFullScreenController.swift
//  PetSaver
//
//  Created by Boaz Froog on 24/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import UIKit

class ImageFullScreenController: UIViewController {
    
    var imageview: UIImageView?
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage {
            imageview?.image = UIImage(named: imageToLoad)
        }
        
        view.addSubview(imageview!)
        imageview?.contentMode = .scaleAspectFit
    }
}
