//
//  DataService.swift
//  Shopper
//
//  Created by Artur on 16/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import Foundation

class DataService {
    static let instalce = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Beanie", imageName: "hat01.png"),
        Product(title: "Black", imageName: "hat02.png"),
        Product(title: "Iglo", imageName: "hat03.png"),
        Product(title: "Snapback 04", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Gray", imageName: "hoodie01.png"),
        Product(title: "Red", imageName: "hoodie02.png"),
        Product(title: "Gray 2", imageName: "hoodie03.png"),
        Product(title: "Black", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Black", imageName: "shirt01.png"),
        Product(title: "Light Gray", imageName: "shirt02.png"),
        Product(title: "Red", imageName: "shirt03.png"),
        Product(title: "Hustle Gray", imageName: "shirt04.png"),
        Product(title: "Kickflip Black", imageName: "shirt05.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return [Product]()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
