//
//  TotalLoansView.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/5/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class TotalLoansView: UIView{
    
    let title : UILabel = {
        let title = UILabel()
        let attributedText = NSMutableAttributedString(string: "PREQUALIFIED FOR\n", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)])
        attributedText.append(NSAttributedString(string: "\n", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)]))
        attributedText.append(NSAttributedString(string: "$272.47", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 28)]))
        title.attributedText = attributedText
        title.textAlignment = .center
        title.numberOfLines = 0
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    func setupUI() {
        backgroundColor = .white
        addSubview(title)
        title.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 40, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

