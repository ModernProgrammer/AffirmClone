//
//  LoansViewController.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/4/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit

class LoansViewController: UIViewController {
    var totalLoansView : TotalLoansView = {
        let view = TotalLoansView()
        return view
    }()
    
    let loans : LoanContainerView = {
        let view = LoanContainerView()
        return view
    }()
    
    let loanTabBar : LoanTabBarSelection = {
        let view = LoanTabBarSelection()
        return view
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    fileprivate func setupUI() {
        view.backgroundColor = .white
        let stackView = UIStackView(arrangedSubviews: [totalLoansView,loans])
        totalLoansView.heightAnchor.constraint(equalToConstant: view.safeAreaLayoutGuide.layoutFrame.height/(6)).isActive = true
        totalLoansView.translatesAutoresizingMaskIntoConstraints = false
        
        loans.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        loans.translatesAutoresizingMaskIntoConstraints = false
        loans.loansViewController = self
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .vertical
        view.addSubview(stackView)
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 0)
        
        loanTabBar.loansViewController = self
        view.addSubview(loanTabBar)
        loanTabBar.anchor(top: nil, bottom: totalLoansView.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 40)
        
    }
    
    func scrollCollectionView(indexPath: IndexPath) {
        loans.scrollToSection(indexPath: indexPath)
    }
    
    func pushView(navTitle: String) {
        print("Press \(navTitle)")

        let testView = TestView()
        testView.navTitle = navTitle
        self.navigationController?.pushViewController(testView, animated: true)
    }

}
