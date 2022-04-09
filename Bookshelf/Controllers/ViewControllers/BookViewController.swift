//
//  BookViewController.swift
//  Bookshelf
//
//  Created by Bo Kim on 4/8/22.
//

import UIKit

class BookViewController: UIViewController {

    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    @IBOutlet weak var bookIntro: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    
    var books: Books?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

    }
    
    func updateViews() {
        guard let book = books else { return }
        bookTitle.text = book.title
        bookAuthor.text = book.author
        coverImage.image = UIImage(named: book.coverImageName)
        bookIntro.text = book.intro
    }

}
