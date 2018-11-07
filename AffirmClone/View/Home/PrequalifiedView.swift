//
//  PrequalifiedView.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/4/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class PrequalifiedView: UIView {
    var homeController : HomeController?

    var loanAmount: String = "---" {
        didSet {
            let attributedText = NSMutableAttributedString(string: "PREQUALIFIED FOR\n", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)])
            attributedText.append(NSAttributedString(string: "\n", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)]))
            attributedText.append(NSAttributedString(string: "$\(loanAmount)", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 28)]))
            title.attributedText = attributedText
        }
    }
    
    let title : UILabel = {
        let title = UILabel()
        title.textAlignment = .center
        title.numberOfLines = 0
        return title
    }()
    
    let specialOfferTitle : UIButton = {
        let button = UIButton()
        let attributedText = NSMutableAttributedString(string: "SPECIAL OFFERS", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)])
        button.setAttributedTitle(attributedText, for: .normal)
        return button
    }()
    
    let seeAllButton : UIButton = {
        let button = UIButton()
        let attributedText = NSMutableAttributedString(string: "SEE ALL (21)", attributes: [NSAttributedString.Key.foregroundColor : UIColor.blue,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12)])
        button.setAttributedTitle(attributedText, for: .normal)
        button.addTarget(self, action: #selector(handlePress), for: .touchUpInside)
        return button
    }()

    @objc func handlePress() {
        print("Pressed")
        homeController?.presentView(navTitle: "See All")
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        addSubview(title)
        addSubview(specialOfferTitle)
        addSubview(seeAllButton)
        
        title.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
        
        specialOfferTitle.anchor(top: nil, bottom: bottomAnchor, leading: leadingAnchor, trailing: nil, paddingTop: 0, paddingBottom: 0, paddingLeft: 20, paddingRight: 0, width: 0, height: 0)
        
        seeAllButton.anchor(top: nil, bottom: bottomAnchor, leading: nil, trailing: trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 20, width: 0, height: 0)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
