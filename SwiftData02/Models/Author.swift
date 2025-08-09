//
//  Author.swift
//  SwiftData02
//
//  Created by Victor Zerefos on 04/07/25.
//

import Foundation
import SwiftData

@Model
class Author {
    var name: String
    var books: [Book]
    
    init(name: String, books: [Book]) {
        self.name = name
        self.books = books
    }
}
