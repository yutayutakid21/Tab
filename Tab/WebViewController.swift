//
//  ViewController.swift
//  Tab
//
//  Created by Fujii Yuta on 2020/01/21.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    /*
     ・課題
     Tabbarを継承し、NavigationControllerを継承した画面を2つ作成し、画面AにWebView(Google)を画面Bに、駅の名前のラベルがついたセルを3つ持ったTableView、セルをタップするとshowで画面遷移し、画面遷移先の背景色を上から、赤、青、黄色で実装してください。
     
     
     */
    
    var webview:WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webview = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        view.addSubview(webview)
        
        let request = URLRequest(url: URL(string: "https://www.google.com")!)
        webview.load(request)
    }


}

