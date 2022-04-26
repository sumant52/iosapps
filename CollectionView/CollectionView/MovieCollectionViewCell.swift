//
//  MovieCollectionViewCell.swift
//  CollectionView
//
//  Created by Chaganti,Sumant on 4/24/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    func assignMovie(with movie: Movie){
        ImageViewOutlet.image = movie.image
    }
}
