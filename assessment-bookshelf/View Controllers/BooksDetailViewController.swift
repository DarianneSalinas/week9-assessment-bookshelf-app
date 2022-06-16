//
//  BooksDetailViewController.swift
//  assessment-bookshelf
//
//  Created by Darianne Salinas on 5/20/22.
//

import UIKit

class BooksDetailViewController: UIViewController {

    @IBOutlet weak var bookTitleLabel: UILabel!
    
    @IBOutlet weak var authorNameLabel: UILabel!
    
    @IBOutlet weak var bookCoverImgView: UIImageView!
    
    @IBOutlet weak var bookReleaseDateLabel: UILabel!
    
    @IBOutlet weak var bookBioLabel: UILabel!
    
    var books: Books?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews () {
        guard let books = books else {
            return
        }
        
        bookTitleLabel.text = books.bookName
        authorNameLabel.text = " Author name: \(books.authorName)"
//        bookCoverImgView.image = UIImage(named: books.imageName)
        bookReleaseDateLabel.text = "Released: \(books.releaseDate)"
        bookBioLabel.text = books.bookBio
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
