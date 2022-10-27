//
//  GenreTableViewCell.swift
//  Movie
//
//  Created by Alex Grazhdan on 27.10.2022.
//

import UIKit

class GenreTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleGenres: UILabel!
    
    func setup(to : Genres) {
        self.titleGenres.text = to.name
    }
    

}
