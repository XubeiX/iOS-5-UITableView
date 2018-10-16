//
//  Product.swift
//  Shopper
//
//  Created by Artur on 16/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
