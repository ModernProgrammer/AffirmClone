//
//  LoanTabBarSelection.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/5/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class LoanTabBarSelection: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    var loansViewController : LoansViewController?
    let cellId = "cellId"
    let selectedHeight: CGFloat = 5
    let unselectedHeight: CGFloat = 2
    
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
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(collectionView)
        collectionView.backgroundColor = .white
        collectionView.isScrollEnabled = false
        collectionView.register(LoanTabBarCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.anchor(top: nil, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: frame.width, height: 40)
    }
}

extension LoanTabBarSelection {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! LoanTabBarCell
        if indexPath.item == 0 {
            cell.labelText = "CURRENT LOANS"
            cell.bottomLine.backgroundColor = .blue

        } else {
            cell.labelText = "PAST LOANS"
            cell.bottomLine.backgroundColor = .gray

        }
        cell.backgroundColor = .white
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width/2, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let currentIndexPath = IndexPath(item: indexPath.item, section: indexPath.section)
        let selectedCell = collectionView.cellForItem(at: currentIndexPath) as! LoanTabBarCell
        var unselectedIndexPath : IndexPath?
        if currentIndexPath.item == 1 {
            unselectedIndexPath = IndexPath(item: indexPath.item - 1, section: indexPath.section)
        } else if indexPath.item == 0 {
            unselectedIndexPath = IndexPath(item: indexPath.item + 1, section: indexPath.section)
        }
        let unselectedSelectedCell = collectionView.cellForItem(at: unselectedIndexPath!) as! LoanTabBarCell
        
        selectedCell.bottomLine.backgroundColor = .blue
        unselectedSelectedCell.bottomLine.backgroundColor = .gray

        loansViewController!.scrollCollectionView(indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}


