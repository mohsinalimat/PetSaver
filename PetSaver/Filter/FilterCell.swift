//
//  FilterCell.swift
//  PetSaver
//
//  Created by Boaz Froog on 27/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import UIKit

class FilterCell: UICollectionViewCell {
    
    let distanceSlider: UISlider = {
        let ds = UISlider()
        ds.minimumValue = 1
        ds.maximumValue = 100
        ds.isContinuous = false
        ds.value = 25
                
        return ds
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(distanceSlider)
        distanceSlider.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
