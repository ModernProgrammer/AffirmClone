//
//  LoanCell.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/6/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class LoanCell: UICollectionViewCell {
    let labelText : UILabel = {
        let text = UILabel()
        text.text = "Loans"
        return text
    }()
    
    let bottomLine : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(labelText)
        labelText.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 20, paddingBottom: 20, paddingLeft: 20, paddingRight: 0, width: 0, height: 0)
        
        addSubview(bottomLine)
        bottomLine.anchor(top: nil, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 20, paddingRight: 0, width: 0, height: 0.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
