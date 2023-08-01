//
//  MainTabBarController.swift
//  AppStoreLBTA
//
//  Created by Burit Boonkorn on 1/8/2566 BE.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
    
        viewControllers = [
            createNavController(
                viewController: AppsSearchController(),
                title: "Search",
                imageName: "search"
            ),
            createNavController(
                viewController: TodayViewController(),
                title: "Today",
                imageName: "today_icon"
            ),
            createNavController(
                viewController: TodayViewController(),
                title: "Apps",
                imageName: "apps"
            )
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        viewController.view.backgroundColor = .systemBackground
        viewController.navigationItem.title = title
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
    
        return navController
    }
}
