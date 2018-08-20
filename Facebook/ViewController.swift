//
//  ViewController.swift
//  Facebook
//
//  Created by Sho Nozaki on 2018/08/05.
//  Copyright © 2018年 Sho Nozaki. All rights reserved.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PostViewControllerDelegate {
    
    /* 独自の投稿一覧を定義 */
    private var timelines = Timelines.createTimelines() {
        didSet {
            // tableViewのリフレッシュ
            tableView.reloadData()
        }
    }

    @IBOutlet weak var tableView: UITableView!
    
    /* ステータスバーの設定 */
    override var preferredStatusBarStyle: UIStatusBarStyle {
        // ステータスバーの文字色を白に設定
        return .default
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // デフォルトでセルの高さを設定
        tableView.estimatedRowHeight = 250
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    /**
     セクション数の設定
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timelines.count + 1
    }
    
    /**
     各セクションに対するセルの設定
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            // セル番号が0の場合
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
            cell.selectionStyle = .none // セル選択時のアニメーション設定⇒なし
            return cell
        default:
            // それ以外
            let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineCell", for: indexPath) as! TimelineTableViewCell
            cell.selectionStyle = .none // セル選択時のアニメーション設定⇒なし
            //
            let timeline = timelines[indexPath.row - 1]
            cell.timeline = timeline
            return cell
        }
    }

    /**
     セルの高さを設定
     */
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            // PostCell
            return 80
        default:
            // TimelineCell
//            return 250
            return UITableViewAutomaticDimension // セルの高さを自動調整
        }
    }
    
    /**
     セル選択時の処理を設定
     */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セル番号0(一番上のセル)が押下された場合、投稿作成画面を表示する
        if indexPath.row == 0 {
            // モーダル表示に関する情報を設定
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // MainStoryboardを定義
            let vc = storyboard.instantiateViewController(withIdentifier: "PostViewController") as! PostViewController // PostViewControllerを定義
            let user = timelines[0].user // 投稿ユーザの定義(FIXME:今回はユーザ情報を配列で管理)
            vc.user = user // PostViewControllerへユーザ情報を設定
            vc.delegate = self
            self.present(vc, animated: true, completion: nil) // モーダルへ遷移(PostViewControllerへ遷移)
        }
    }
    
    /**
     PostViewControllerのPostボタン押下時に呼ばれる
     */
    func postViewController(viewController: PostViewController, timeline: Timeline) {
        // 新規投稿を投稿一覧に追加する
        var newTimelines = timelines // 投稿一覧を定義
        newTimelines.insert(timeline, at: 0) // 新規投稿を追加
        timelines = newTimelines //
    }

}

