//
//  FirstViewController.swift
//  lesson 17 TabbarController
//
//  Created by Valeriia Zakharova on 11.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //если нам что то нужно отобразить делать это во view vill apear
    }
    
    @IBAction func didTapGoToSecond(_ sender: Any) {
        
        if let tabBar = tabBarController {
            if let tabBarControllers = tabBar.viewControllers {
                if let _ = tabBarControllers[1] as? SecondViewController {
                    tabBar.selectedIndex = 1
                }
            }
        }
    }
     
    
}
