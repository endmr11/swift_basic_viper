//
//  DetailViewController.swift
//  basicviper
//
//  Created by Eren Demir on 18.06.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailPresenterObject: ViewToPresenterDetailProtocol?
    @IBOutlet weak var useridLbl: UILabel!
    
    @IBOutlet weak var idLbl: UILabel!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var bodyLbl: UILabel!
    
    var post: PostsEntity?
    override func viewDidLoad() {
        super.viewDidLoad()
        DetailRouter.execModule(ref: self)
    }
    override func viewWillAppear(_ animated: Bool) {
        detailPresenterObject?.viewPost(id: post!.id!)
    }
    override func viewDidLayoutSubviews() {
        if let postDetail = post {
            useridLbl.text = "\(postDetail.userId!)"
            idLbl.text = "\(postDetail.id!)"
            titleLbl.text = "\(postDetail.title!)"
            bodyLbl.text = "\(postDetail.body!)"
            self.navigationItem.title = "\(postDetail.title!)"
        }
    }
    
}

extension DetailViewController : PresenterToViewDetailProtocol {
    func sendDataToView(post: PostsEntity) {
        print(">> \(post)")
    }
}
