//
//  StringExtension.swift
//  GOW
//
//  Created by Winonito Programmer on 15/03/25.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    func localized(withComment: String) -> String {
        NSLocalizedString(self, comment: withComment)
    }
}
