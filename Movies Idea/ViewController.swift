//
//  ViewController.swift
//  Movies Idea
//
//  Created by Richard Arif Mazid on 05/05/2021.
//

import UIKit

// First : Need an User Interface (UI)
// Second : Need a network request to get our movie list
// Third : Something to see info about movie

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    @IBOutlet var field: UITextField!
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        field.delegate = self
        
    }

    // Field
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        moviesSearcher()
        return true
    }
    
    func moviesSearcher() {
        field.resignFirstResponder()
        
        guard let text = field.text, !text.isEmpty else {
            return
        }
    }
    
    // Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // Show movie details
    }
}


struct Movie {
    
}

