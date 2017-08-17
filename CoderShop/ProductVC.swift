//
//  ProductVC.swift
//  CoderShop
//
//  Created by Ljubomir on 8/17/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productionCollection: UICollectionView!
    
    
    private(set) public var products = [Product] ()

    override func viewDidLoad() {
        super.viewDidLoad()
        productionCollection.dataSource = self
        productionCollection.delegate = self
        
    }
    
    func initProduct(category: Category) {
        products = DataService.instance.getProdact(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProdactCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
        
    }

}
