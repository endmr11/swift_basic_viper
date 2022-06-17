//
//  DetailProtocols.swift
//  basicviper
//
//  Created by Eren Demir on 18.06.2022.
//

import Foundation


protocol ViewToPresenterDetailProtocol {
    var detailInteractorObject:PresenterToInteractorDetailProtocol? {get set}
    var detailViewObject:PresenterToViewDetailProtocol? {get set}
    func viewPost(id:Int)
}

protocol PresenterToInteractorDetailProtocol {
    var detailPresenterObject:InteractorToPresenterDetailProtocol? {get set}
    func getPost(id:Int)
}


protocol InteractorToPresenterDetailProtocol {
    func sendDataToPresenter(post:PostsEntity)
}
protocol PresenterToViewDetailProtocol {
    func sendDataToView(post:PostsEntity)
}

protocol PresenterToRouterDetailProtocol {
    static func execModule(ref:DetailViewController)
}
