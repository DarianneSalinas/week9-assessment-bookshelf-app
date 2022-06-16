//
//  Books.swift
//  assessment-bookshelf
//
//  Created by Darianne Salinas on 5/20/22.
//

import Foundation

class Books {
   
    init(bookName: String, imgaeName: String, authorName: String, releaseDate: Int, bookBio: String) {
        self.bookName = bookName
        self.imageName = bookName.lowercased()
        self.authorName = authorName
        self.releaseDate = releaseDate
        self.bookBio = bookBio
        
    }
    let bookName: String
    let imageName: String
    let authorName: String
    let releaseDate: Int
    let bookBio: String
}
