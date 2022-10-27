//
//  MoiveCollectionViewCell.swift
//  Movie
//
//  Created by Alex Grazhdan on 24.10.2022.
//

import UIKit
//import SDWebImage

class MoiveCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var titlemoives: UILabel!
    

    @IBOutlet weak var bgView: UIView!
    

    func setup(media: Results) {
        
        self.titlemoives.text = media.title
//        let url = URL(string: "https://picsum.photos/200")
//                let data = try? Data(contentsOf: url!)
//                movieImageView.image = UIImage(data: data!)
      
    }
    
//    func LoadImage (path : String) {
//        let imageURLString = path
//        let imageURL = URL(string: imageURLString)
//        movieImageView.sd_setImage(with: imageURL)
//
//    }
//    func setup(with movie: Movie){
//        movieImageView.image = movie.image
//        titlemoives.text = movie.title
//    }
   
}
