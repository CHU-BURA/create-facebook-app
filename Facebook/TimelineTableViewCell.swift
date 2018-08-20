//
//  TimelineTableViewCell.swift
//  Facebook
//
//  Created by Sho Nozaki on 2018/08/05.
//  Copyright © 2018年 Sho Nozaki. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    var timeline: Timeline! {
        didSet {
            profileImageView.image = UIImage(named: timeline.user.imageName)
            userNameLabel.text = timeline.user.name
            bodyTextView.text = timeline.body
            if timeline.isLiked {
                likeCountLabel.text = "You and \(timeline.likeCount - 1) others liked"
            } else {
                likeCountLabel.text = "\(timeline.likeCount) people liked"
            }
            commentCountLabel.text = "\(timeline.commentCount) comments"
        }
    }
    
}
