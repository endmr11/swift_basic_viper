//
//  DetailInteractor.swift
//  basicviper
//
//  Created by Eren Demir on 18.06.2022.
//

import Foundation


class DetailInteractor: PresenterToInteractorDetailProtocol{
    var detailPresenterObject: InteractorToPresenterDetailProtocol?
    
    func getPost(id:Int) {
        ApiService().getPost(id:id) { result in
            switch result{
            case .success(let post):
                self.detailPresenterObject?.sendDataToPresenter(post: post)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    
}
