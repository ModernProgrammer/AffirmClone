//
//  LoansView.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/5/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class LoanContainerView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    var loansViewController : LoansViewController?
    
    let cellId = "cellId"
    
    lazy var collectionView : UICollectionView = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowlayout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isScrollEnabled = false
        return collectionView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCollectionView()
    }
    
    func scrollToSection(indexPath: IndexPath) {
        self.collectionView.scrollToItem(at: indexPath, at: [.centeredVertically, .centeredHorizontally], animated: true)
    }
    
    func setupCollectionView() {
        backgroundColor = .white
        addSubview(collectionView)
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .white
        collectionView.register(LoanCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension LoanContainerView {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! LoanCollectionViewCell
        if indexPath.item == 0 {
            cell.numberOfCells = 3
        }
        cell.loansViewController = loansViewController
        return cell
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
