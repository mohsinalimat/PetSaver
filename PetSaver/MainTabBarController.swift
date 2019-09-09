//
//  MainTabBarController.swift
//  PetSaver
//
//  Created by Boaz Froog on 09/09/2019.
//  Copyright © 2019 Boaz Froog. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
       // let index = viewControllers?.firstIndex(of: viewController)
        
        return true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        let loginController = LoginController()
        let navController = UINavigationController(rootViewController: loginController)
        self.present(navController, animated: true, completion: nil)
    }
    
    func setupViewControllers() {
      // let homeNavController = templateNavController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_selected"), rootViewController: Home)
    }
    
    fileprivate func templateNavController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController = UIViewController()) -> UINavigationController {
        let viewController = rootViewController
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselectedImage
        navController.tabBarItem.selectedImage = selectedImage
        return navController
    }
}
