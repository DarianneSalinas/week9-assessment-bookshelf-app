//
//  BookController.swift
//  assessment-bookshelf
//
//  Created by Darianne Salinas on 5/20/22.
//

import Foundation

class BookController {
    static var books: [Books] {
        let twilight = Books(bookName: "Twilight", imgaeName: "twilight", authorName: "Stephanie Meyer", releaseDate: 2005, bookBio: "It follows the life of Bella Swan, a human teenager who moves to Forks, Washington and finds her life turned upside-down when she falls in love with a vampire named Edward Cullen.")
        
        let janeEyre = Books(bookName: "Jane Eyre", imgaeName: "janeEyre", authorName: "Charlotte Bronte", releaseDate: 1847, bookBio: "The novel follows the story of Jane, a seemingly plain and simple girl as she battles through life's struggles - her cruel and abusive Aunt Reed, the grim conditions at Lowood school, her love for Rochester and Rochester's marriage to Bertha.")
        
        let outlander = Books(bookName: "Outlander", imgaeName: "outlander", authorName: "Diana Gabaldon", releaseDate: 1991, bookBio: "Outlander follows the story of Claire Randall, a married combat nurse from 1945 who is mysteriously swept back in time to 1743, where she is immediately thrown into an unknown world where her life is threatened.")
        
        return [twilight, janeEyre, outlander]
    }
}
