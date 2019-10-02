//
//  FilterCell.swift
//  PetSaver
//
//  Created by Boaz Froog on 27/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import UIKit

//protocol DistanceFilterDelegate {
//    func didChangeDistanceFilterValue(for distance: Int)
//}

class FilterCell: UICollectionViewCell {
    
  //  var delegate: DistanceFilterDelegate?
    
    let distanceSlider: UISlider = {
        let ds = UISlider()
        ds.minimumValue = 1
        ds.maximumValue = 100
        ds.isContinuous = false
        ds.value = 25
        ds.addTarget(self, action: #selector(distanceSliderValueChanged(_:)), for: .valueChanged)
        return ds
    }()
    
//    @objc func distanceSliderValueChanged() {
//        guard let distanceFilterValue = Int(distanceSlider.value) else { return }
//        delegate?.didChangeDistanceFilterValue(for: distanceFilterValue)
//    }
    
    @objc func distanceSliderValueChanged(_ sender: Any) {
       
        print((sender as! UISlider).value)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(distanceSlider)
        distanceSlider.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
