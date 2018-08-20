//
//  Timeline.swift
//  Facebook
//
//  Created by Sho Nozaki on 2018/08/05.
//  Copyright © 2018年 Sho Nozaki. All rights reserved.
//

import UIKit

struct Timeline {
    let id: Int
    let user: User
    let body: String
    let commentCount: Int
    let likeCount: Int
    let isLiked: Bool
    
    init(id: Int, user: User, body: String, commentCount: Int, likeCount: Int, isLiked: Bool) {
        self.id = id
        self.user = user
        self.body = body
        self.commentCount = commentCount
        self.likeCount = likeCount
        self.isLiked = isLiked
    }
}
