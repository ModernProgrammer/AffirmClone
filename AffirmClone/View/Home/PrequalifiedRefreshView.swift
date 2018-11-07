
//
//  PrequalifiedRefreshView.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/4/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit
import Lottie

class PrequalifiedRefreshView: UIView {
    var homeController : HomeController?

    let pulseButton : LOTAnimationView = {
        let animationView = LOTAnimationView(name: "pulseButton")
        animationView.contentMode = .scaleAspectFit
        animationView.loopAnimation = true
        animationView.play()
        return animationView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(pulseButton)
        pulseButton.anchor(top: topAnchor, bottom: bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, paddingTop: 40, paddingBottom: 40, paddingLeft: 40, paddingRight: 40, width: 0, height: 0)
        let tap = UITapGestureRecognizer(target: self, action: #selector(handlePress))
        tap.numberOfTapsRequired = 1
        pulseButton.addGestureRecognizer(tap)
    }
    
    @objc func handlePress() {
        print("Press")
        homeController?.presentView(navTitle: "Prequalified Loan")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
