//
//  LoanTabBarCell.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/7/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//
import UIKit


class LoanTabBarCell: UICollectionViewCell {
    var labelText:String? {
        didSet {
            let attributedText = NSMutableAttributedString(string: labelText!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)])
            label.attributedText = attributedText
        }
    }
    
    let label : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    let bottomLine : UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        label.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(bottomLine)
        bottomLine.anchor(top: nil, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 3)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
