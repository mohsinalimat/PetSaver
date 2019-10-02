//
//  FilterController.swift
//  PetSaver
//
//  Created by Boaz Froog on 26/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import UIKit


class FilterController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
     
    let cellId = "cellId"
    let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        
        collectionView.backgroundColor = UIColor.rgb(red: 240, green: 240, blue: 240)
        
        collectionView.register(FilterCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(FilterHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    @objc func distanceSliderValueChanged() {
        
    }
    
    var header: FilterHeader?
   
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! FilterHeader
        
        self.header = header
        
        return header
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .white
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }

    
    
//   func didChangeDistanceFilterValue(for distance: Int) {
//    self.distance
//   }
    
}
