//
//  FilmCollectionViewCell.swift
//  TestWorkMovies
//
//  Created by AnnBas on 10/12/2018.
//  Copyright © 2018 BAN. All rights reserved.
//

import UIKit

class FilmCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmNameLabel: UILabel!
    
    var filmMenu: FilmModel? {
        didSet{
            filmNameLabel.text = filmMenu?.name
            if let image = filmMenu?.imageName {
                filmImageView.image = UIImage(named: image)
            }
        }
    }
}
