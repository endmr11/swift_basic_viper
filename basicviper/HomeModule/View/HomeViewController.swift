//
//  ViewController.swift
//  basicviper
//
//  Created by Eren Demir on 17.06.2022.
//

import UIKit



class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var postList: [PostsEntity] = []
    var homePresenterObject:ViewToPresenterHomeProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        HomeRouter.execModule(ref: self)
    }
    override func viewWillAppear(_ animated: Bool) {
        homePresenterObject?.viewPosts()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier!)
        if segue.identifier == "fromHomeToDetail" {
            guard let id = sender as? Int else {return}
            let vc = segue.destination as! DetailViewController
            let post = self.postList[id]
            vc.post = post
            
        }
    }

}
extension HomeViewController : PresenterToViewHomeProtocol {
    func sendDataToView(postList: [PostsEntity]) {
        DispatchQueue.main.async {
            self.postList = postList
            self.tableView.reloadData()
        }
    }
}
extension HomeViewController: UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = self.postList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! PostsTableViewCell
        cell.lblText.text = post.title
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "fromHomeToDetail", sender: indexPath.row)
    }
    
}
