//
//  ProductsVC.swift
//  Shopper
//
//  Created by Artur on 16/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {
    
    private(set) public var products = [Product]()
    @IBOutlet weak var productsCollection: UICollectionView!
    
    func initProducts(category: Category) {
        products = DataService.instalce.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    override func viewDidLoad() {
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }

}

extension ProductsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
    
}
