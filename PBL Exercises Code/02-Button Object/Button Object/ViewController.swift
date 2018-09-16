//
//  ViewController.swift
//  Button Object
//
//  Created by 41 on 2018/2/13.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Num :Int = 0
    @IBOutlet weak var Number_Label: UILabel!
    @IBAction func Add_Number_button(_ sender: Any) {
        Num = Num + 1
        Number_Label.text = String(Num)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

