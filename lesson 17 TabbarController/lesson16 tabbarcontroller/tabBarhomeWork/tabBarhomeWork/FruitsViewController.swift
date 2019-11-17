//
//  FruitsViewController.swift
//  tabBarhomeWork
//
//  Created by Valeriia Zakharova on 14.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import UIKit

class FruitsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    
    var category: CategoryOfFruits!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categoryNameLabel.text = category.name
        tableView.register(UINib(nibName: "FruitCell", bundle: nil), forCellReuseIdentifier: "FruitCell")
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
}

extension FruitsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell") as! FruitCell
        
        let fruit = category.fruits[indexPath.row]
        cell.update(data: fruit)
        
        return cell
    }

}




