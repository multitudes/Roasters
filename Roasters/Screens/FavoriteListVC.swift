//
//  FavoriteListVC.swift
//  Roasters
//
//  Created by Laurent B on 17/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

class FavoriteListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        getFavorites()
    }
    
    
    func getFavorites() {
        // todo
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
