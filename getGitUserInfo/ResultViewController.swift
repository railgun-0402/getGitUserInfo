//
//  ResultViewController.swift
//  getGitUserInfo
//
//  Created by 菅原大輝 on 2022/08/11.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel?
    
    
    var x:Int = 0
    var y:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 上記では、x, y を 0 と宣言していたが、
        // 1画面目のViewControllerから遷移するときにprepareForSegueで
        // x, yの値を新たに代入されたので両方共 1 が入っている
        let result = x + y
        print(result)
        label?.text = "結果は \(result) です"
                
    }
    
}
