//
//  ViewController.swift
//  TestWorkMovies
//
//  Created by AnnBas on 07/12/2018.
//  Copyright © 2018 BAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var filmsCollectionView: UICollectionView!
    
    
    //model input
    var itemFilmMenuArray: [FilmModel] {
        var blankFilmModel = FilmModel()
        blankFilmModel.name = "This is the API promo"
        blankFilmModel.imageName = "blancPicMovieDb" //data from the internet
        blankFilmModel.rating = "10/10"
        blankFilmModel.details = "This is compalsary clause of the TERMS OF USE and test of looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong String"
        return [blankFilmModel]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmsCollectionView.dataSource = self
        filmsCollectionView.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let vc = segue.destination as? DetailFilmViewController {
                let menu = sender as? FilmModel // получаю тут.
                print(menu ?? "this is nil")
                vc.menu = menu
            }
        }
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemFilmMenuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemFilmCell = filmsCollectionView.dequeueReusableCell(withReuseIdentifier: "FilmCell", for: indexPath) as? FilmCollectionViewCell {
            
            itemFilmCell.filmMenu = itemFilmMenuArray[indexPath.row]
            
            return itemFilmCell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu = itemFilmMenuArray[indexPath.row] //реакция на клик
        self.performSegue(withIdentifier: "showDetail", sender: menu) //передать инф о ячейке туда. отправляю здесь, получаю выше
    }
    
}
