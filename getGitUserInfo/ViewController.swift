//
//  ViewController.swift
//  getGitUserInfo
//
//  Created by 菅原大輝 on 2022/08/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 他の画面から segue を使って戻ってきた時に呼ばれる
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        print("戻るよん")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.x = 1
        resultViewController.y = 1
    }

}

