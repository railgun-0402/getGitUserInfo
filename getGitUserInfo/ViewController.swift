//
//  ViewController.swift
//  getGitUserInfo
//
//  Created by 菅原大輝 on 2022/08/11.
//

import UIKit

class ViewController: UIViewController {
                
    @IBOutlet weak var tableView: UITableView!
                
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let nib = UINib(nibName: "QiitaTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "QiitaTableViewCell")
        tableView.rowHeight = 80
                
    }
    
    // QiitaURLからデータ取得
    func getQiitaTitle(text: String) {
        // リクエストURL指定
        let url: URL = URL(string: "https://api.github.com/search/users?q=r")!
        
        // URLSessionを用いてリクエスト
        let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
                        
            do
            {
                // JSONに変換する
//                let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [Any]
                let json = try JSONSerialization.jsonObject(with: data!) as? [String:Any]
                
                print(json ?? "nil")
            
                 // for文で各記事のtitleを抜き出し、titleArray配列に追加
//                for i in 0...(count ?? 0) - 1 {
//                    let title = articles[i]["allow_forking"] as! String
//                    self.titleArray.append(title)
//                    print(title)
//                }
                
                // (G) TableView更新
//                DispatchQueue.main.sync {
//                    self.tableView.reloadData()
//                }
            }
            
            catch
            {
                print(error)
            }
                        
        })
        task.resume()
    }
        
}

extension ViewController: UITableViewDataSource {
    
    // セルをタップした際の処理
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cellを取得する
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QiitaTableViewCell", for: indexPath) as? QiitaTableViewCell else {
            return UITableViewCell()
        }
        // cellに情報を設定
        cell.set(title: "タイトル\(indexPath.row)", author: "作成者")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 表示したCellの個数を返す
        return 15
    }

    
}

