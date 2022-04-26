//
//  MovieCollectionViewCell.swift
//  Chaganti_Movies
//
//  Created by Chaganti,Sumant on 4/24/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var movieOutlet: UIImageView!
    
    func assignMovie(_ movie: Movie) {
        movieOutlet.image = movie.image
    
    }
}
