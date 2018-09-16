//
//  ViewController.swift
//  CheckBox
//
//  Created by 41 on 2018/3/3.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var option1: BEMCheckBox!
    @IBOutlet weak var option2: BEMCheckBox!
    @IBOutlet weak var option3: BEMCheckBox!
    @IBOutlet weak var option4: BEMCheckBox!
    @IBOutlet weak var result: UILabel!
    
    var item1:String?=""
    var item2:String?=""
    var item3:String?=""
    var item4:String?=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func submit(_ sender: Any) {
        if (option1.on){ item1 = "1 " } else { item1 = "" }
        if (option2.on){ item2 = "2 " } else { item2 = "" }
        if (option3.on){ item3 = "3 " } else { item3 = "" }
        if (option4.on){ item4 = "4 " } else { item4 = "" }
        if (item1=="")&&(item2=="")&&(item3=="")&&(item4==""){
            result.text = "你沒有勾選任何一個選項"
        }
        else{
            result.text = item1! + item2! + item3! + item4!
        }
    }
    
}

