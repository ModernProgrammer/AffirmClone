//
//  SpecialOfferCell.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/4/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class SpecialOfferCell: UICollectionViewCell {
    
    let container : UIView = {
        let container = UIView()
        container.backgroundColor = .white
        return container
    }()
    
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.layer.cornerRadius = 5
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let aprTitle : UILabel = {
        let title = UILabel()
        let attributedText = NSMutableAttributedString(string: "TITLE\n", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)])
        attributedText.append(NSAttributedString(string: "\n", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 4)]))
        attributedText.append(NSAttributedString(string: "As low as 0% APR", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)]))
        title.attributedText = attributedText
        title.textAlignment = .left
        title.numberOfLines = 0
        return title
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(container)
        container.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
        container.addSubview(imageView)
        imageView.anchor(top: container.topAnchor, bottom: container.bottomAnchor, leading: container.leadingAnchor, trailing: container.trailingAnchor, paddingTop: 20, paddingBottom: 80, paddingLeft: 20, paddingRight: 20, width: 0, height: 0)
        
        

        container.addSubview(aprTitle)
        imageView.layer.shadowColor = UIColor.gray.cgColor
        imageView.layer.shadowOpacity = 0.2
        imageView.layer.shadowOffset = CGSize(width: 5, height: 5)
        imageView.layer.shadowRadius = 5
        
        aprTitle.anchor(top: imageView.bottomAnchor, bottom: container.bottomAnchor, leading: imageView.leadingAnchor, trailing: imageView.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
