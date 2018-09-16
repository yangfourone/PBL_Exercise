//
//  ViewController.swift
//  Progress-View
//
//  Created by 41 on 2018/3/10.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var label: UILabel!
    var ini:Bool = true
    var j:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func initial(_ sender: Any) {
        self.label.text = "下載進度：0 %"
        progressView.progress = 0
        j = 0
        ini = true
    }
    
    @IBAction func begin(_ sender: Any) {
        ini = false
        delay()
    }
    
    func delay() {
        Timer.scheduledTimer(withTimeInterval: 0.07, repeats: true) {
            (timer) in
            if (self.j<100 && !self.ini) {
                self.j=self.j+1
                self.progressView.progress = self.progressView.progress + 0.01
                self.label.text = "下載進度：" + String(self.j) + " %"
            }
        }
    }
}

