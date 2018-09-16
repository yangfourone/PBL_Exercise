//
//  SecondPage.swift
//  Segue
//
//  Created by 41 on 2018/2/18.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class SecondPage: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
