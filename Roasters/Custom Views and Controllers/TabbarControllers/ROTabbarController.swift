//
//  ROTabbarController.swift
//  Roasters
//
//  Created by Laurent B on 17/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

class ROTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemYellow
        viewControllers = [createSearchNC(), createFavoritesNC(), createMapNC()]
        
        
    }
    
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(title: "", image: SFSymbols.sparkles, selectedImage: SFSymbols.sparkles)
        searchVC.tabBarItem.tag = 0
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesVC = FavoriteListVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(title: "", image: SFSymbols.favorites, selectedImage: SFSymbols.favorites)
        favoritesVC.tabBarItem.tag = 1
        return UINavigationController(rootViewController: favoritesVC)
    }
    
    
    func createMapNC() -> UINavigationController {
        let mapVC = MapVC()
        mapVC.title = "Map"
        mapVC.tabBarItem = UITabBarItem(title: "", image: SFSymbols.map, selectedImage: SFSymbols.map)
        mapVC.tabBarItem.tag = 2
        return UINavigationController(rootViewController: mapVC)
    }
    
    
}
