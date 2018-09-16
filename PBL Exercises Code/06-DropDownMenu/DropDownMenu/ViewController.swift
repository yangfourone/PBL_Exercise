//
//  ViewController.swift
//  DropDownMenu
//
//  Created by 41 on 2018/3/2.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choosing: UILabel!
    @IBOutlet var options: [UIButton]!
    
    @IBAction func startSelect(_ sender: UIButton) {
        option_controll()
    }
    
    @IBAction func optionPressed(_ sender: UIButton) {
        //讓get_tea = 現在的選到之選項的title
        let get_tea = sender.currentTitle ?? ""
        //並讓 label 做出相對應的茶類顯示
        choosing.text = "你所選的茶類為：" + get_tea
        option_controll()
    }
    
    func option_controll(){
        for option in options{
            //開著就關掉，關著就開起來
            option.isHidden = !option.isHidden
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

