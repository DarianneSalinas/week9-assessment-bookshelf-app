//
//  BooksListViewController.swift
//  assessment-bookshelf
//
//  Created by Darianne Salinas on 5/20/22.
//

import UIKit

class BooksListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return BookController.books.count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return BookController.books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookTitleCell", for: indexPath)

        // Configure the cell...
       
        let book = BookController.books[indexPath.row]
        //old way
//        cell.textLabel?.text = book.bookName
//        cell.detailTextLabel?.text = "Book \(indexPath.row + 1)"
//        cell.imageView?.contentMode = .scaleAspectFill
//        cell.imageView?.image = UIImage(named: book.imageName)
        
        //new way
        var myCustomCellConfiguration = cell.defaultContentConfiguration()
        myCustomCellConfiguration.text = book.bookName
        myCustomCellConfiguration.secondaryText = book.authorName
//        contentConfiguration.image = UIImage(named: <#T##String#>)
        myCustomCellConfiguration.image = UIImage(systemName: "hare")
        myCustomCellConfiguration.imageProperties.maximumSize = CGSize(width: 100, height: 100)
        cell.contentConfiguration = myCustomCellConfiguration
        
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBookDetail" {
            let destination = segue.destination as? BooksDetailViewController
            guard let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            let bookSoftball = BookController.books[indexPath.row]
            destination?.books = bookSoftball
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
