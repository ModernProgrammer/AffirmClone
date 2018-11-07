//
//  TabBarController.swift
//  AffirmClone
//
//  Created by Diego Bustamante on 11/4/18.
//  Copyright © 2018 Diego Bustamante. All rights reserved.
//

import UIKit


class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpControllers()
        setupWhiteMenuBar()
    }
    
    func setUpControllers() {
        let home = templateNavController(title: "Home",unselectedImage: UIImage(named: "home")!, selectedImage: UIImage(named: "home")!,  rootViewController: HomeController())
        let loans = templateNavController(title: "Loans",unselectedImage: UIImage(named: "loans")!, selectedImage: UIImage(named: "loans")!,  rootViewController: LoansViewController())
        let profile = templateNavController(title: "Profile",unselectedImage: UIImage(named: "profile")!, selectedImage: UIImage(named: "profile")!,  rootViewController: ProfileViewController())
        viewControllers = [home,loans,profile]
    }
    
    fileprivate func templateNavController(title: String, unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController = UIViewController()) -> UINavigationController {
        let viewController = rootViewController
        let viewNavController = UINavigationController(rootViewController: viewController)
        
        viewNavController.tabBarItem.image = unselectedImage
        viewNavController.tabBarItem.title = title
        viewNavController.tabBarItem.selectedImage = selectedImage
        viewNavController.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        viewNavController.navigationBar.shadowImage = UIImage()
        viewNavController.navigationBar.barTintColor = .white
        viewNavController.navigationBar.tintColor = .black
        viewNavController.navigationBar.isTranslucent = false
        
        return viewNavController
    }
    let layerGradient = CAGradientLayer()
    
    fileprivate func setupWhiteMenuBar() {
        tabBar.barTintColor = UIColor.clear
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
        
        tabBar.tintColor = UIColor.black
        tabBar.barTintColor  = UIColor.gray
        tabBar.backgroundColor = UIColor.white
    }
}
