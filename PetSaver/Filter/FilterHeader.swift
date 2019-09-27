//
//  FilterHeader.swift
//  PetSaver
//
//  Created by Boaz Froog on 27/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import UIKit

class FilterHeader: UICollectionViewCell {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Search Distance:"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let distanceLabel: UILabel = {
        let label = UILabel()
        label.text = "10 km"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        addSubview(distanceLabel)
        
        titleLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 50, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        distanceLabel.anchor(top: topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 50, width: 0, height: 0)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
