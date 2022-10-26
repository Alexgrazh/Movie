//
//  MoiveCollectionViewCell.swift
//  Movie
//
//  Created by Alex Grazhdan on 24.10.2022.
//

import UIKit

class MoiveCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var titlemoives: UILabel!
    

    func setup(media: Results) {
        
        self.titlemoives.text = media.title
      
    }
    
//    func LoadImage (path : String) {
//        let imageURLString = "https://image.tmdb.org/t/p/w300" + path
//                let imageURL = URL(string: imageURLString)
//        movieImageView.Hulk(with: imageURL)
//
//    }
//    func setup(with movie: Movie){
//        movieImageView.image = movie.image
//        titlemoives.text = movie.title
//    }
   
}
