//
//  LabelExtension.swift
//  GOW
//
//  Created by Winonito Programmer on 08/03/25.
//
import UIKit

extension UILabel{
    func setCustomFont(fontName: String, size: CGFloat, textStyle: UIFont.TextStyle) {
        guard let customFont = UIFont(name: fontName, size: size) else {
            self.font = UIFont.systemFont(ofSize: size)
            return
        }
        self.font = customFont
        
        if #available(iOS 11.0, *){
            let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
            self.font = fontMetrics.scaledFont(for: customFont)
            self.adjustsFontForContentSizeCategory = true
        }
    }
}
