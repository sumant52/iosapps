//
//  MovieCollectionViewCell.swift
//  Chaganti_Movies
//
//  Created by Chaganti,Sumant on 4/24/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var movieCollectionView: UIImageView!
    
    func assignMovie(with movie: Movie){
        movieCollectionView.image = movie.image
    }
}
