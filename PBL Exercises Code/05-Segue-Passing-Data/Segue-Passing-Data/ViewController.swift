//
//  ViewController.swift
//  Segue-Passing-Data
//
//  Created by 41 on 2018/2/25.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    var cal_height: String?
    var cal_weight: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clean(_ sender: Any) {
        height.text = ""
        weight.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (height.text == "" || weight.text == "" || height.text == "0") {
            tapGesture()
        }
        else {
            if segue.identifier == "data" {
                let controller = segue.destination as! data
                controller.cal_height = height.text!
                controller.cal_weight = weight.text!
            }
        }
    }
    
    func tapGesture() {
        //宣告一個 alert controller 並定義通知一個標題和訊息
        let alert = UIAlertController(title: "錯誤", message: "請確認填入之身高或體重", preferredStyle: UIAlertControllerStyle.alert)
        //增加此通知的按鈕，這邊僅為通知所使用，所以新增一個OK就好
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
