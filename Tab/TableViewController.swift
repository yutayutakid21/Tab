//
//  TableViewController.swift
//  Tab
//
//  Created by 近藤宏輝 on 2020/01/21.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    /*
    ・課題
    Tabbarを継承し、NavigationControllerを継承した画面を2つ作成し、画面AにWebView(Google)を画面Bに、駅の名前のラベルがついたセルを3つ持ったTableView、セルをタップするとshowで画面遷移し、画面遷移先の背景色を上から、赤、青、黄色で実装してください。
    
    
    */

    
    @IBOutlet weak var tableView: UITableView!
    
    var stationArray = ["渋谷","新宿","恵比寿"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
