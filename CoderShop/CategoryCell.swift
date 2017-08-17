//
//  CategoryCell.swift
//  CoderShop
//
//  Created by Ljubomir on 8/17/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    

}
