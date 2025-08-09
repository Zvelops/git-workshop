//
//  Book.swift
//  SwiftData02
//
//  Created by Victor Zerefos on 04/07/25.
//

import Foundation
import SwiftData

@Model
class Book {
    var title: String
    var author: Author?
    
    init(title: String, author: Author? = nil) {
        self.title = title
        self.author = author
    }
}
