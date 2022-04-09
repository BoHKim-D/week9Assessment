//
//  BookTableViewController.swift
//  Bookshelf
//
//  Created by Bo Kim on 4/8/22.
//

import UIKit

class BookTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BookController.listOfBooks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookTitleCell", for: indexPath)

        let books = BookController.listOfBooks[indexPath.row]
        cell.imageView?.image = UIImage(named: books.coverImageName)
        cell.textLabel?.text = books.title

        return cell
    }

    
   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "toDetailShow" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? BookViewController else { return }
            let bookToSend = BookController.listOfBooks[indexPath.row]
            
            destination.books = bookToSend
        }
    }

}
