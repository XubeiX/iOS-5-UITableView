//
//  ViewController.swift
//  Shopper
//
//  Created by Artur on 16/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {
 
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem();
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
           assert(sender as? Category != nil)
           productsVC.initProducts(category: sender as! Category)
        }
    }

}

// MARK: TableView delegate and DataSource
extension CategoriesVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instalce.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instalce.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instalce.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
}
