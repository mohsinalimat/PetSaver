//
//  UserProfileHeader.swift
//  PetSaver
//
//  Created by Boaz Froog on 12/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import UIKit


class UserProfileHeader: UICollectionViewCell {
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        profileImageView.layer.cornerRadius = 80 / 2
        profileImageView.clipsToBounds = true
        
        setupProfileImage()
    }
    
    var user: User? {
        didSet {
            
        }
    }
    
    fileprivate func setupProfileImage() {
        
        
        
        let url = URL(string: String)
        URLSession.shared.dataTask(with: <#T##URL#>)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
