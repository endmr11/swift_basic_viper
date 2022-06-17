//
//  DetailRouter.swift
//  basicviper
//
//  Created by Eren Demir on 18.06.2022.
//

import Foundation


class DetailRouter: PresenterToRouterDetailProtocol {
    static func execModule(ref: DetailViewController) {
        let presenter = DetailPresenter()
        
        //View
        ref.detailPresenterObject = presenter
        
        //Presenter
        ref.detailPresenterObject?.detailInteractorObject = DetailInteractor()

        ref.detailPresenterObject?.detailViewObject = ref

        //Interactor
        ref.detailPresenterObject?.detailInteractorObject?.detailPresenterObject = presenter
    }
    
    
}
