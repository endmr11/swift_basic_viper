//
//  HomeProtocols.swift
//  basicviper
//
//  Created by Eren Demir on 18.06.2022.
//

import Foundation
protocol ViewToPresenterHomeProtocol {
    var homeInteractorObject:PresenterToInteractorHomeProtocol? {get set}
    var homeViewObject:PresenterToViewHomeProtocol? {get set}
    func viewPosts()
}

protocol PresenterToInteractorHomeProtocol {
    var homePresenterObject:InteractorToPresenterHomeProtocol? {get set}
    func getAllPosts()
}

protocol InteractorToPresenterHomeProtocol {
    func sendDataToPresenter(postList:[PostsEntity])
}
protocol PresenterToViewHomeProtocol {
    func sendDataToView(postList:[PostsEntity])
}

protocol PresenterToRouterHomeProtocol {
    static func execModule(ref:HomeViewController)
}
