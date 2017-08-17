//
//  DataService.swift
//  CoderShop
//
//  Created by Ljubomir on 8/17/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import Foundation


class DataService {
    
    static let instance = DataService ()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    
    ]
    
    private let hat = [
        Product(title: "CODER HAT", price: "18$", imageName: "hat01.png"),
        Product(title: "CODER HAT", price: "22$", imageName: "hat02.png"),
        Product(title: "CODER HAT", price: "22$", imageName: "hat03.png"),
        Product(title: "CODER HAT", price: "20$", imageName: "hat04.png")
    
    ]
    
    private let hoodies = [
        Product(title: "HOODIE GREY", price: "32$", imageName: "hoodie01.png"),
        Product(title: "HOODIE RED", price: "32$", imageName: "hoodie02.png"),
        Product(title: "HOODIE GREY", price: "32$", imageName: "hoodie03.png"),
        Product(title: "HOODIE BLACK", price: "32$", imageName: "hoodie04.png")
    
        
    ]

    
    private let shirts = [
        Product(title: "SHIRT BLACK", price: "18$", imageName: "shirt01.png"),
        Product(title: "SHIRT GREY", price: "18$", imageName: "shirt02.png"),
        Product(title: "SHIRT RED", price: "18$", imageName: "shirt03.png"),
        Product(title: "SHIRT GREY", price: "18$", imageName: "shirt04.png"),
        Product(title: "SHIRT BLACK", price: "18$", imageName: "shirt05.png"),
        
    
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories () -> [Category] {
        return categories
    }
    
    
    func getProdact(forCategoryTitle title: String) -> [Product] {
        switch title {
            case "SHIRTS":
            return getShirts ()
            case "HATS":
            return getHats ()
            case "HOODIES":
            return getHoodies ()
            case "DIGITAL":
            return getDigitalGoods ()
        default:
            return getShirts ()
            
        }
    }
    
    func getHats () -> [Product] {
        return hat
    }
    func getHoodies () -> [Product] {
        return hoodies
    }
    func getShirts () -> [Product] {
        return shirts
    }
    func getDigitalGoods () -> [Product] {
        return digitalGoods
    }
    
}

