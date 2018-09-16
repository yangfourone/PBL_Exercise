//
//  data.swift
//  Segue-Passing-Data
//
//  Created by 41 on 2018/2/25.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class data: UIViewController {
    
    @IBOutlet weak var BMI: UILabel!
    @IBOutlet weak var result: UILabel!
    
    var cal_height:String = ""
    var cal_weight:String = ""
    var bmi:Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let bmi = (Double(cal_weight)! / (Double(cal_height)! * Double(cal_height)!))*10000
        
        BMI.text = String(format: "%.2f",bmi)
        
        if bmi <= 18.5 { result.text = "過輕" }
        else if bmi > 18.5 && bmi <= 24 { result.text = "正常" }
        else if bmi > 24 && bmi <= 27 { result.text = "過重" }
        else if bmi > 27 && bmi <= 30 { result.text = "輕度肥胖" }
        else if bmi > 30 && bmi <= 35 { result.text = "中度肥胖" }
        else if bmi > 35 { result.text = "重度肥胖" }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
