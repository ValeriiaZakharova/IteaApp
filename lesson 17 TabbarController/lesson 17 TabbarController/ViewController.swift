//
//  ViewController.swift
//  lesson 17 TabbarController
//
//  Created by Valeriia Zakharova on 11.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//
//UIAlertController : .alert, .actionSheet

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapShow(_ sender: Any) {
        
        let alertControllr = UIAlertController(title: "Some", message: "some Description", preferredStyle: .alert)
        
        let actionFirst = UIAlertAction(title: "First", style: .default) { (_) in
            debugPrint("First")
        }
        
        let cancelFirst = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
            debugPrint("Cancel")
        }
        
        alertControllr.addAction(actionFirst)
        alertControllr.addAction(cancelFirst)
        
        present(alertControllr, animated: true, completion: nil)
        //here you can add something (music while we show alert)
        
    }
    
    @IBAction func didTapActionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "ActionSheet", message: "ActionSheet", preferredStyle: .actionSheet)
        
        let actionSheetFirst = UIAlertAction(title: "First", style: .default) { (_) in
            debugPrint("First")
        }
        let actionSheetSecond = UIAlertAction(title: "Second", style: .default) { (_) in
            debugPrint("Second")
        }
        let actionSheetThird = UIAlertAction(title: "Third", style: .default) { (_) in
            debugPrint("Third")
        }
        let actionSheetCancel = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
            debugPrint("Nefiga")
        }
        
        alertController.addAction(actionSheetFirst)
        alertController.addAction(actionSheetSecond)
        alertController.addAction(actionSheetThird)
        alertController.addAction(actionSheetCancel)
        
        present(alertController, animated: true, completion: nil)
    }
    func test() {
        print(self)
    }
    
}

