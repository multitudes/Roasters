//
//  SearchVC.swift
//  Roasters
//
//  Created by Laurent B on 17/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UINavigationBar.appearance().tintColor = .systemBlue
        //print(UINavigationBar.appearance().tintColor)
        refresh()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    @objc private func refresh() {
      Model.currentModel.refresh { error in
        if let error = error {
          let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
          alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
          self.present(alert, animated: true, completion: nil)

          return
        }
        print(Model.currentModel.roasters)
        print(Model.currentModel.roasters[0].name)
        print(Model.currentModel.roasters[0].description)
      }
    }
}
