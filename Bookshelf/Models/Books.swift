//
//  Books.swift
//  Bookshelf
//
//  Created by Bo Kim on 4/8/22.
//

import Foundation

class Books {
    let title: String
    let author: String
    let coverImageName: String
    let intro: String
    
    init (title: String, author: String, coverImageName: String, intro: String) {
        self.title = title
        self.author = author
        self.coverImageName = coverImageName
        self.intro = intro
    }
}
