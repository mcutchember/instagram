//
//  PostCell.swift
//  InstagramUI
//
//  Created by Myle$ on 3/27/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet var postImageView: UIImageView!
    
    @IBOutlet var numberofLikesButton: UIButton!

    @IBOutlet var postCaptionLabel: UILabel!
    
    @IBOutlet var timeAgoLabel: UILabel!
    
    var post: Post! {
        didSet{

            self.updateUI()
}
    }
    
    func updateUI(){
        self.postImageView.image = post.image
        self.postCaptionLabel.text = post.caption
        self.numberofLikesButton.setTitle("Be the first to post a comment", for: [])
        timeAgoLabel.text = post.timeAgo
    }
    
}
