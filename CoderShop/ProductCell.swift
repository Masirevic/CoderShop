//
//  ProductCell.swift
//  CoderShop
//
//  Created by Ljubomir on 8/17/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var prodactPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        prodactPrice.text = product.price
    }
    
}
