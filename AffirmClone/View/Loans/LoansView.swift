//
//  LoansView.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/5/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class LoanContainerView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    let cellId = "cellId"
    
    lazy var collectionView : UICollectionView = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowlayout)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCollectionView()
    }
    
    func setupCollectionView() {
        backgroundColor = .white
        collectionView.backgroundColor = .white
        collectionView.register(CurrentLoansView.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(PastLoansView.self, forCellWithReuseIdentifier: cellId)

        addSubview(collectionView)
        collectionView.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension LoansView {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CurrentLoansView
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PastLoansView
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
