//
//  TabBarController.swift
//  tabbar
//
//  Created by Franklin  Stilhano on 11/10/22.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
    }
    
    
    func configItems(){
        
        guard let items = tabBar.items else { return }
        
        items[0].title = "Home"
        items[0].image = UIImage(named: "coracao")
        
        items[1].title = "Pesquisa"
        items[1].image = UIImage(named: "lupa")
        
        items[2].title = "Sair"
        items[2].image = UIImage(named: "sair")
    }
}
//data.append
