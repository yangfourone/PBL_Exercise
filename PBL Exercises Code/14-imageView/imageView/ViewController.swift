//
//  ViewController.swift
//  imageView
//
//  Created by 41 on 2018/3/12.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    // 宣告一個 Bool 來判斷燈泡現在的狀況
    var power:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func light_power(_ sender: Any) {
        if power {
            imageView.image = UIImage(named: "light off.jpeg")
        }
        else {
            imageView.image = UIImage(named: "light on.jpeg")
        }
        power = !power
    }
}

