//
//  PastLoansView.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/5/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class PastLoansView: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    let cellId = "cellId"
    
    lazy var collectionView : UICollectionView = {
        let flowlayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowlayout)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PastLoansView {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = indexPath.item % 2 == 0 ? .blue : .cyan
        return cell
    }
    
}
