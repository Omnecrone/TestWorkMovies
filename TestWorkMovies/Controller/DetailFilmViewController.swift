//
//  DetailFilmViewController.swift
//  TestWorkMovies
//
//  Created by AnnBas on 10/12/2018.
//  Copyright © 2018 BAN. All rights reserved.
//

import UIKit

class DetailFilmViewController: UIViewController {
    
    @IBOutlet weak var detailUIImageView: UIImageView! {
        didSet {
            guard let image = menu?.imageName else {return}//проверка на нил
            detailUIImageView.image = UIImage(named: image)
        }
    }
    
    @IBOutlet weak var detailRatingLabel: UILabel! {
        didSet {
            guard let labelRating = menu?.rating else {return}
            detailRatingLabel.text = String("Rating: " + labelRating)
        }
    }
    
    @IBOutlet weak var detailNameLabel: UILabel! {
        didSet {
            guard let labelName = menu?.name else {return}
            detailNameLabel.text = String(labelName)
        }
    }
    
    @IBOutlet weak var detailMoreDetailsLabel: UILabel! {
        didSet {
            guard let labelDetails = menu?.details else {return}
            detailMoreDetailsLabel.text = String(labelDetails)
        }
    }
    
    var menu: FilmModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
