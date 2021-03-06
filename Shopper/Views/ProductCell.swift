//
//  ProductCell.swift
//  Shopper
//
//  Created by Artur on 16/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    func updateView(product: Product){
        self.name.text = product.title
        self.productImage.image = UIImage(named: product.imageName)
    }
}
