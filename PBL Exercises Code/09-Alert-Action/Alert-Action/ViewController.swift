//
//  ViewController.swift
//  Alert-Action
//
//  Created by 41 on 2018/3/9.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //設定 alert 的標題及訊息
        let alert = UIAlertController(title: "登入", message: "請輸入帳號密碼", preferredStyle: .alert)
        //設定"登入"按鈕
        let loginAction = UIAlertAction(title: "登入", style: .default){
            (action) in
            let user_id = alert.textFields![0].text
            let user_password = alert.textFields![1].text
            
            if (user_id=="NTUST") && (user_password=="ECE") {
                //什麼事都不用做
            }
            else{
                //再秀一次
                self.viewDidAppear(animated)
            }
        }
        //增加第一個 TextField (帳號)
        alert.addTextField {
            (textField) in
            //設定 TextField 的預設字
            textField.placeholder = "帳號是:NTUST"
        }
        alert.addTextField {
            (textField) in
            //設定 TextField 的預設字
            textField.placeholder = "密碼是:ECE"
            //設定此欄為密碼型態
            textField.isSecureTextEntry = true
        }
        //新增"登入"按鈕
        alert.addAction(loginAction)
        //顯示這個 alert
        show(alert, sender: self)
    }
    
    @IBAction func alert_action(_ sender: Any) {
        //設定為 alert action
        let alertController = UIAlertController(title: "Title", message: "我的訊息：這是 alert action", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            (action) in
            self.dismiss (animated: true, completion: nil)
        }
        //增加"OK"按鍵
        alertController.addAction(okAction)
        //顯示提醒
        show(alertController, sender: self)
    }
    
    @IBAction func action_sheet(_ sender: Any) {
        //設定為 action sheet
        let alertController = UIAlertController(title: "Title", message: "我的訊息：這是 action sheet", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            (action) in
            self.dismiss (animated: true, completion: nil)
        }
        //增加"OK"按鍵
        alertController.addAction(okAction)
        //顯示提醒
        show(alertController, sender: self)
    }
    
}

