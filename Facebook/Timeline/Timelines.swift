//
//  User.swift
//  Facebook
//
//  Created by Sho Nozaki on 2018/08/05.
//  Copyright © 2018年 Sho Nozaki. All rights reserved.
//

import UIKit

class Timelines {
    
    /**
     投稿一覧を作成する.
     - returns: 自作の投稿一覧
     - todo: 一時作成のためDB連携後に削除
     
     */
    static func createTimelines() -> [Timeline] {
        var timelines: [Timeline] = []
        timelines.append(Timeline(id: 1, user: User(id: 1, name: "chubura", imageName: "hiyoko"),
            body: "トップIT企業のCEOの方々のありがたいお言葉", commentCount: 7, likeCount: 98, isLiked: false))
        timelines.append(Timeline(id: 2, user: User(id: 2, name: "Mark Zuckerberg", imageName: "MarkZuckerberg"),
            body: "In a world that's changing really quickly, the only strategy that is guaranteed to fail is not taking risks.", commentCount: 12, likeCount: 129, isLiked: true))
        timelines.append(Timeline(id: 3, user: User(id: 3, name: "Drew Houston", imageName: "DrewHouston"),
            body: "The hardest-working people don’t work hard because they’re disciplined. They work hard because working on an exciting problem is fun.", commentCount: 90, likeCount: 53, isLiked: false))
        timelines.append(Timeline(id: 4, user: User(id: 4, name: "Jack Dorsey", imageName: "JackDorsey"),
            body: "A founder is not a job, it's a role, an attitude. And it's something that can happen again and again and again, and in fact it has to happen again and again and again, otherwise we would not move forward.", commentCount: 62, likeCount: 22, isLiked: true))
        timelines.append(Timeline(id: 5, user: User(id: 5, name: "Travis Kalanick", imageName: "TravisKalanick"),
            body: "Uber is efficiency with elegance on top. That’s why I buy an iPhone instead of an average cell phone, why I go to a nice restaurant and pay a little bit more. It’s for the experience", commentCount: 32, likeCount: 98, isLiked: false))
        timelines.append(Timeline(id: 6, user: User(id: 6, name: "Brian Chesky", imageName: "BrianChesky"),
            body: "Build something 100 people love, not something 1 million people kind of like.", commentCount: 33, likeCount: 98, isLiked: false))
        timelines.append(Timeline(id: 7, user: User(id: 7, name: "Sunder Pechai", imageName: "SunderPechai"),
            body: "With a few clicks, you can get about ten applications installed on your computer, and we'll help you keep them up to date.", commentCount: 12, likeCount: 76, isLiked: true))
        timelines.append(Timeline(id: 8, user: User(id: 8, name: "Steve Jobs", imageName: "SteveJobs"),
            body: "That’s been one of my mantras — focus and simplicity. Simple can be harder than complex; you have to work hard to get your thinking clean to make it simple.", commentCount: 12, likeCount: 98, isLiked: true))
        timelines.append(Timeline(id: 9, user: User(id: 9, name: "Susan Wojcicki", imageName: "SusanWojcicki"),
            body: "Though we do need more women to graduate with technical degrees, I always like to remind women that you don't need to have science or technology degrees to build a career in tech.", commentCount: 190, likeCount: 33, isLiked: false))
        timelines.append(Timeline(id: 10, user: User(id: 10, name: "Jeff Weiner", imageName: "JeffWeiner"),
            body: "In order to inspire people, that's going to have to come from somewhere deep inside of you.", commentCount: 1, likeCount: 87, isLiked: true))
        timelines.append(Timeline(id: 11, user: User(id: 11, name: "Stewart Butterfield", imageName: "StewartButterfield"),
            body: "I think there’s a deep impulse in most humans to do creative stuff, whether that’s music or art, photography or writing. Most people at some point in their life say they want to do something creative… Enabling and empowering that is a very powerful force in human nature and I think it’s always been there.", commentCount: 12, likeCount: 23, isLiked: false))
        timelines.append(Timeline(id: 12, user: User(id: 12, name: "Evan Spiegel", imageName: "EvanSpiegel"),
            body: "There are very few people in the world who get to build a business like this. I think trading that for some short-term gain isn’t very interesting.", commentCount: 12, likeCount: 19, isLiked: false))
        timelines.append(Timeline(id: 13, user: User(id: 13, name: "Sean Rad", imageName: "SeanRad"),
            body: "She’s one of the most beautiful women I’ve ever seen but it doesn’t mean that I want to rip her clothes off and have sex with her. Attraction is nuanced. I’ve been attracted to women who are …’ he pauses ‘… well, who my friends might think are ugly. I don’t care if someone is a model. Really. It sounds clichéd and almost totally unbelievable for a guy to say this, but it’s true. I need an intellectual challenge.", commentCount: 12, likeCount: 320, isLiked: true))
        
//        timelines.append(Timeline(id: 11, user: User(id: 11, name: "SampleUser 1", imageName: "defaultProfileImage"), body: "I think there’s a deep impulse in most humans to do creative stuff, whether that’s music or art, photography or writing. Most people at some point in their life say they want to do something creative… Enabling and empowering that is a very powerful force in human nature and I think it’s always been there.", commentCount: 12, likeCount: 23, isLiked: false))
//        timelines.append(Timeline(id: 13, user: User(id: 13, name: "SampleUser 2", imageName: "defaultProfileImage"), body: "She’s one of the most beautiful women I’ve ever seen but it doesn’t mean that I want to rip her clothes off and have sex with her. Attraction is nuanced. I’ve been attracted to women who are …’ he pauses ‘… well, who my friends might think are ugly. I don’t care if someone is a model. Really. It sounds clichéd and almost totally unbelievable for a guy to say this, but it’s true. I need an intellectual challenge.", commentCount: 12, likeCount: 320, isLiked: true))

        return timelines
    }
}
