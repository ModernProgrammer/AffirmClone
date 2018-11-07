//
//  SpecialOfferView.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/6/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class TestView: UIViewController {
    
    var navTitle:String? {
        didSet {
            navigationItem.title = navTitle
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavBar()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.isTranslucent = false
        if (navigationController?.isBeingPresented)! {
           navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(hanldeDismiss))
        }
        
    }
    
    @objc func hanldeDismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
