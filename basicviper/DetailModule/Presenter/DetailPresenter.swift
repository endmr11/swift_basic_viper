//
//  DetailPresenter.swift
//  basicviper
//
//  Created by Eren Demir on 18.06.2022.
//

import Foundation


class DetailPresenter: ViewToPresenterDetailProtocol{
    var detailInteractorObject: PresenterToInteractorDetailProtocol?
    var detailViewObject: PresenterToViewDetailProtocol?
    
    func viewPost(id:Int) {
        detailInteractorObject?.getPost(id: id)
    }
}

extension DetailPresenter: InteractorToPresenterDetailProtocol{
    func sendDataToPresenter(post: PostsEntity) {
        detailViewObject?.sendDataToView(post: post)
    }
    
    
}
