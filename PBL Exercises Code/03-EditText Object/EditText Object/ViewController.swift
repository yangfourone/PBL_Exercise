//
//  ViewController.swift
//  EditText Object
//
//  Created by 41 on 2018/2/17.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Student_ID_input: UITextField!
    @IBOutlet weak var Student_ID_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit(_ sender: Any) {
        if(Student_ID_input.text == ""){
            //tapGesture 為一函數，用來達到沒有輸入內容時會跳出訊息通知的功能
            tapGesture()
        }
        else {
            Student_ID_label.text = "你輸入的學號為：" + Student_ID_input.text!
            //驚嘆號表示該值不為空(不是nil)
        }
    }
    func tapGesture() {
        //宣告一個 alert controller 並定義通知一個標題和訊息
        let alert = UIAlertController(title: "錯誤", message: "請確認您已輸入學號", preferredStyle: UIAlertControllerStyle.alert)
        //增加此通知的按鈕，這邊僅為通知所使用，所以新增一個OK就好
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
        present(alert, animated: true, completion: nil) 
    }
}

