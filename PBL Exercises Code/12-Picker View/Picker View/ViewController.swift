//
//  ViewController.swift
//  Picker View
//
//  Created by 41 on 2018/3/14.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var label: UILabel!
    
    var list = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        list.append("50嵐")
        list.append("十杯")
        list.append("迷客夏")
        list.append("九品川")
        list.append("珍煮丹")
        list.append("陳三鼎")
        list.append("阿水茶舖")
        list.append("巖茶")
    }
    //宣告要有多少個滾筒
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //滾筒有多少資料要顯示
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    //滾筒要顯示的資料是什麼
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print(list[row])
        return list[row]
    }
    //得知使用者選到哪個東西
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = "你今天想喝哪一間的飲料：" + list[row]
    }
}

