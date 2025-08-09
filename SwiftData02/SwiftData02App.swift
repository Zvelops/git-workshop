//
//  SwiftData02App.swift
//  SwiftData02
//
//  Created by Victor Zerefos on 03/07/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftData02App: App {
    var body: some Scene {
        WindowGroup {
            AuthorsView()
        }
        .modelContainer(for: [Author.self, Book.self])
    }
}
