//
//  ViewController.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/4/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Affirm"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "question"), style: .plain, target: self, action: #selector(handleQuestion))
        setupUI()
    }
    
    let prequalifiedView : PrequalifiedView = {
        let view = PrequalifiedView()
        return view
    }()
    
    let specialOffersView : SpecialOffersView = {
        let view = SpecialOffersView()
        return view
    }()
    
    let prequalifiedRefreshView : PrequalifiedRefreshView = {
        let view = PrequalifiedRefreshView()
        return view
    }()
    
    func setupUI(){
        prequalifiedView.homeController = self
        specialOffersView.homeController = self
        prequalifiedRefreshView.homeController = self

        let loanAmount = 247.67
        prequalifiedView.loanAmount = String(loanAmount)
        
        let stackView = UIStackView(arrangedSubviews: [prequalifiedView,specialOffersView,prequalifiedRefreshView])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        view.addSubview(stackView)
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    
    func presentView(navTitle: String) {
        let testView = TestView()
        testView.navTitle = navTitle
        let navTestPresentView =  UINavigationController(rootViewController: testView)
        self.present(navTestPresentView, animated: true)
    }
    
    @objc func handleQuestion() {
        print("Question Mark")
        let testView = TestView()
        testView.navTitle = "Help"
        let navTestPresentView =  UINavigationController(rootViewController: testView)
        self.present(navTestPresentView, animated: true)
    }
}

