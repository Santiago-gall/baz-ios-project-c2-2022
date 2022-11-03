//
//  MovieHomePresenter.swift
//  BAZProject
//
//  Created by 1028092 on 01/11/22.
//

import Foundation
import UIKit
final class MovieHomePresenter: MoviewHomeViewToPresenterProtocol, MovieHomeInteractorToPresenterProtocol{
    var interactor: MovieHomePresenterToInteractorProtocol?
    
    var router: MovieHomePresenterToRouterProtocol?
    
    var view: MovieHomePresenterToViewProtocol?
    /// This function does not parameters, this call the service API of movies
    func getMoviesHomeData(){
        interactor?.getMoviesInt()
    }
    /// This function receive a parameter is a list object called movie
    ///  - parameters
    ///     - movies is a variable list of type object
    func resultMoviesList(movies: [Movie]) {
        self.view?.getListMovies(listMovies: movies)
    }
    /// This function receive a parameter and retorna value UIImage
    ///  - parameters
    ///     - url: type string set url of the image
    func setUrlToImage(url: String) -> UIImage!{
        return interactor?.setUrlToImage(url: url)
    }
}
