//
//  API.swift
//  getGitUserInfo
//
//  Created by 菅原大輝 on 2022/08/11.
//

import Foundation

var titleArray:[String] = []

// QiitaURLからデータ取得
//func getQiitaTitle() {
//    // (A) リクエストURL指定
//    let url: URL = URL(string: "https://qiita.com/api/v2/items?page=1&query=user%3Amasuhara")!
//    
//    // (B) URLSessionを用いてリクエスト
//    let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
//        
//        print("data: \(String(describing: data))")
//        print("response: \(String(describing: response))")
//        print("error: \(String(describing: error))")
//        
//        do
//        {
//            // (C) JSONに変換するためのメソッド
//            let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [Any]
//            
//            // (D) Any型の配列に変換したものを、[String: Any]の辞書型にダウンキャスト
//            let articles = json.map {(article) -> [String: Any] in
//                return article as! [String: Any]
//            }
//            
//            // (E) 記事の総数をcountと定義する
//            let count = articles.count
//            
//            // (F) for文で各記事のtitleを抜き出し、titleArray配列に追加
//            for i in 0...count - 1 {
//                let title = articles[i]["title"] as! String
//                self.titleArray.append(title)
//                print(title)
//            }
//            
//            // (G) TableView更新
//            DispatchQueue.main.sync {
//                self.tableView.reloadData()
//            }
//        }
//        
//        catch
//        {
//            print(error)
//        }
//                    
//    })
//    task.resume()
//}
