//
//  ColorViewController.swift
//  Tab
//
//  Created by 近藤宏輝 on 2020/01/21.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    var colorSelect = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.view.backgroundColor = colorSelect
        
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
