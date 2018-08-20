//
//  PostViewController.swift
//  Facebook
//
//  Created by Sho Nozaki on 2018/08/06.
//  Copyright © 2018年 Sho Nozaki. All rights reserved.
//

import UIKit

/**
 PostViewController専用の自作Delegate.
 - author: sho.nozaki
 - note:
   - PostViewControllerからViewControllerへ受け渡し
   - 投稿作成画面〜投稿一覧画面 間で値受渡しを可能とする
 */
protocol PostViewControllerDelegate {
    
    /**
     新規投稿の受け渡し.
     
     - parameters:
       - viewController: PostViewController
       - timeline: 投稿内容
     */
    func postViewController(viewController: PostViewController, timeline: Timeline)
}


/**
 投稿クラス.
 */
class PostViewController: UIViewController, UITextViewDelegate {
    
    /* ユーザ情報 */
    var user: User! // ViewControllerからユーザ情報を受け取る
    var delegate: PostViewControllerDelegate!

    @IBOutlet weak var placeholderLabel: UILabel!
    @IBOutlet weak var postTextView: UITextView!
    @IBOutlet weak var postButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // TextView初回編集時における未入力状態の設定(Postボタン) ← 下記textViewDidChange()で初回のみ動作しないため
        postButton.isEnabled = false
        postButton.tintColor = UIColor.lightGray
    }
    
    /**
     TextView編集時の処理
     - note: UITextViewの編集検知が可能
     */
    func textViewDidChange(_ textView: UITextView) {
        
        // postTextViewの編集状態による設定を行う
        if textView.text == "" {
            // postTextViewが未入力の場合
            placeholderLabel.isHidden = false // placeholderLabelを隠す
            postButton.isEnabled = false // Postボタンの無効化
            postButton.tintColor = UIColor.lightGray

        } else {
            // postTextViewが入力ありの場合
            placeholderLabel.isHidden = true // placeholderLabelを隠さない
            postButton.isEnabled = true // Postボタンの有効化
            postButton.tintColor = nil // nilの場合はdefultカラー扱いになる
        }
    }
    
    /**
     Cancelボタン押下時のの処理
     */
    @IBAction func cancelButtonTapped(_ sender: Any) {
        // モーダルを閉じる
        self.dismiss(animated: true, completion: nil)
    }
    
    /**
     Postボタン押下時の処理
     */
    @IBAction func postButtonTapped(_ sender: Any) {
        // 新規投稿の生成
        let timeline = Timeline(id: 100, user: user, body: postTextView.text, commentCount: 0, likeCount: 0, isLiked: false)
//        print(timeline) // TODO: debug
        delegate.postViewController(viewController: self, timeline: timeline) // 新規投稿をViewControllerへ受け渡す
        dismiss(animated: true, completion: nil) // 画面を閉じる
    }
}
