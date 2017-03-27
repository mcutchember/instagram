//
//  PostHeaderCell.swift
//  InstagramUI
//
//  Created by Myle$ on 3/27/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {

    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var usernameLabel: UILabel!
    
    @IBOutlet var followButton: UIButton!
    
    

    var post: Post! {
        didSet {
            self.updateUI()
            
        }
    }
    
    func updateUI(){
        profileImageView.image = post.createdBy.profileImage
        
        profileImageView.layer.cornerRadius = profileImageView.bounds.width / 2.0
        profileImageView.layer.masksToBounds = true
        
        usernameLabel.text = post.createdBy.username
        
        followButton.layer.borderWidth = 1.0
        followButton.layer.cornerRadius = 2.0
        followButton.layer.borderColor = followButton.tintColor.cgColor
        followButton.layer.masksToBounds = true
    }
}
