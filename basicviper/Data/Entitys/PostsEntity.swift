//
//  PostsEntity.swift
//  basicviper
//
//  Created by Eren Demir on 17.06.2022.
//

import Foundation


struct PostsEntity: Decodable {
    let userId: Int?
    let id: Int?
    let title: String?
    let body: String?
}
