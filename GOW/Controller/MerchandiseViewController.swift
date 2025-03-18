//
//  MerchandiseViewController.swift
//  GOW
//
//  Created by Winonito Programmer on 17/03/25.
//

import UIKit

class MerchandiseViewController: UITableViewController {
    
    let categories: [String] = ["Video Games", "Special Edition Controllers", "Action Figures", "Funkos", "Stickers"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "categoryCell", bundle: nil), forCellReuseIdentifier: "CategoryCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        let filteredProducts = cell.products.filter { $0.pCategory == categories[indexPath.section] }
        cell.configureCell(with: filteredProducts)
        
        return cell
    }
}
