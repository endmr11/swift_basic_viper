//
//  PostsTableViewCell.swift
//  basicviper
//
//  Created by Eren Demir on 17.06.2022.
//

import UIKit

class PostsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
