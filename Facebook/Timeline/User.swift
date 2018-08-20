//
//  User.swift
//  Facebook
//
//  Created by Sho Nozaki on 2018/08/05.
//  Copyright © 2018年 Sho Nozaki. All rights reserved.
//

import UIKit

struct User {
    let id: Int
    let name: String
    let imageName: String
    
    init(id: Int, name: String, imageName: String) {
        self.id = id
        self.name = name
        self.imageName = imageName
    }
}
