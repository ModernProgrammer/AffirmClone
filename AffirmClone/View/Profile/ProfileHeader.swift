//
//  ProfileHeader.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/6/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class ProfileHeader: UIView {
    var labelText: String? {
        didSet {
            let attributedText = NSMutableAttributedString(string: labelText!, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 24)])
            label.attributedText = attributedText
        }
    }
    
    let label : UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        label.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: nil, paddingTop: 0, paddingBottom: 0, paddingLeft: 20, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
