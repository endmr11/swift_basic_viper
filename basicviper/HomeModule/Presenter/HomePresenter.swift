//
//  HomePresenter.swift
//  basicviper
//
//  Created by Eren Demir on 17.06.2022.
//

import Foundation
//Sınıf ve protocol
//Interactor, router ve view ile iletişim kuracak
class HomePresenter: ViewToPresenterHomeProtocol {
    var homeInteractorObject:PresenterToInteractorHomeProtocol?
    var homeViewObject:PresenterToViewHomeProtocol?
    func viewPosts() {
        homeInteractorObject?.getAllPosts()
    }
}
extension HomePresenter : InteractorToPresenterHomeProtocol {
    func sendDataToPresenter(postList: [PostsEntity]) {
        homeViewObject?.sendDataToView(postList: postList)
    }
}
