//
//  ContentView.swift
//  SwiftData02
//
//  Created by Victor Zerefos on 03/07/25.
//

import SwiftUI
import SwiftData

struct AuthorsView: View {
    
    @Environment(\.modelContext) var context
    @Query(sort: \Author.name) var authors: [Author]
    
    var body: some View {
        NavigationStack{
            List(authors) { author in
                ForEach(author.books, id: \.self) { book in
                    Text(book.title)
                        .font(.headline)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                }
               
            }
            .navigationTitle(Text("Library"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Mock Data") {
                        mockData()
                    }
                }
                
            }
            
            
        }
        
    }
    
    func mockData() {
        let books: [Book] = [
            Book(
                title: "Harry Potter and the Sorcerer's Stone"
            ),
            Book(
                title: "Harry Potter and the Chamber of Secrets"
            ),
            Book(
                title: "Harry Potter and the Prisoner of Azkaban"
            ),
            Book(
                title: "Harry Potter and the Goblet of Fire"
            ),
            Book(
                title: "Harry Potter and the Order of the Phoenix"
            ),
            Book(
                title: "Harry Potter and the Half-Blood Prince"
            ),
            Book(
                title: "Harry Potter and the Deathly Hallows"
            )
        ]
        let author = Author(name: "J.K. Rowling", books: books)
        
        context.insert(author)
        
    }
    
}

#Preview {
    AuthorsView()
}
