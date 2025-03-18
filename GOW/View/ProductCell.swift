//
//  ProductCell.swift
//  GOW
//
//  Created by Winonito Programmer on 17/03/25.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var pImage: UIImageView!
    @IBOutlet weak var cProduct: UILabel!
    @IBOutlet weak var cPrice: UILabel!
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                contentView.backgroundColor = .systemBlue
            } else {
                contentView.backgroundColor = .clear
            }
        }
    }
}
