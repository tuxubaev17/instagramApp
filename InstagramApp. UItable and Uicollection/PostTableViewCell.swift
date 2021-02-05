//
//  PostTableViewCell.swift
//  InstagramApp. UItable and Uicollection
//
//  Created by Alikhan Tuxubayev on 2/5/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var likeLabel: UILabel!
    
    static let identifier = "PostTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "PostTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with model: User){
        self.likeLabel.text = "\(model.numberOfLikes)"
        self.userNameLabel.text = model.name
        self.userImageView.image = UIImage(named: model.userImageName)
        self.postImageView.image = UIImage(named: model.postImage)

    }
    
}
