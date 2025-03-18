//
//  CategoryCell.swift
//  GOW
//
//  Created by Winonito Programmer on 17/03/25.
//

import UIKit

class CategoryCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    var products: [Product] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        productsCollectionView.register(UINib(nibName: "productCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")

        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
    }
    
    func configureCell(with products: [Product]) {
        self.products = products
        productsCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductCell
        let product = products[indexPath.item]
        
        cell.cProduct.text = product.pName
        cell.cPrice.text = "$\(product.pPrice)"
        cell.pImage.image = UIImage(named: product.pImage)
        
        return cell
    }
}
