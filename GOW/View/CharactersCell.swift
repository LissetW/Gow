//
//  CharactersCell.swift
//  GOW
//
//  Created by Winonito Programmer on 15/03/25.
//

import UIKit

class CharactersCell: UICollectionViewCell {
    
    @IBOutlet weak var cPoster: UIImageView!
    @IBOutlet weak var cName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cName.setCustomFont(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .headline)
        cName.text = "Default Text"
    }
}
