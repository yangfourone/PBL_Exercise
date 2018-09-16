//
//  ViewController.swift
//  Timer
//
//  Created by 41 on 2018/3/12.
//  Copyright © 2018年 41. All rights reserved.

//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Timer_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Timer_button(_ sender: Any) {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            (timer) in
            self.ticker()
        }
    }
    
    func ticker() {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        let whatTime = formatter.string(from: Date())
        
        Timer_label.text = String(whatTime)
    }
    
}

