//
//  SecondViewController.swift
//  lesson 17 TabbarController
//
//  Created by Valeriia Zakharova on 11.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapGoToThird(_ sender: Any) {
        
            if let tabBar = tabBarController {
                if let tabBarControllers = tabBar.viewControllers {
                    if let _ = tabBarControllers[2] as? ThirdViewController {
                        tabBar.selectedIndex = 2
                    }
                }
            }
        }

    }
    


