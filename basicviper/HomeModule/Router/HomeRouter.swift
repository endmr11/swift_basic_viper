//
//  HomeRouter.swift
//  basicviper
//
//  Created by Eren Demir on 17.06.2022.
//

import Foundation
import UIKit
// Class ve Protocol kullanacak
// View, Presenter ve Interactor objelerini kullanacak
class HomeRouter:PresenterToRouterHomeProtocol {
    static func execModule(ref: HomeViewController) {
        let presenter = HomePresenter()
        //View
        ref.homePresenterObject = presenter
        //Presenter
        ref.homePresenterObject?.homeInteractorObject = HomeInteractor()
        ref.homePresenterObject?.homeViewObject = ref
        //Interactor
        ref.homePresenterObject?.homeInteractorObject?.homePresenterObject = presenter
    }
}
