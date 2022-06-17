//
//  HomeInteractor.swift
//  basicviper
//
//  Created by Eren Demir on 17.06.2022.
//

import Foundation
// Sınıf ve Protocol kullanılacak
// Presenter ile iletişim kuracak `homePresenter: InteractorToPresenterProtocol`
class HomeInteractor: PresenterToInteractorHomeProtocol {
    var homePresenterObject: InteractorToPresenterHomeProtocol?
    func getAllPosts() {
        ApiService().getAllPosts { result in
            switch result{
            case .success(let posts):
                self.homePresenterObject?.sendDataToPresenter(postList: posts)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

