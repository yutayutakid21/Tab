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
    
    // 選択されたセルを覚える変数
    var chosenCell: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return stationArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let cellLabel = cell.viewWithTag(1) as! UILabel
        cellLabel.text = stationArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // 選択されたcellの番号を記憶
        chosenCell = indexPath.row
        
        
        
        // 画面遷移の準備
        performSegue(withIdentifier: "Next",sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC:ColorViewController = segue.description as! ColorViewController
        
        if cosenCell == 1 {
            colorVC.colorSelectString = "赤"
        } else if cosenCell == 2 {
            colorVC.colorSelectString = "青"
        } else if cosenCell== 3 {
            colorVC.colorSelectString = "黄色"
        }
        
        
        
    }

    

}
