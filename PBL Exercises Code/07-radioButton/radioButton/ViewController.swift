//
//  ViewController.swift
//  radioButton
//
//  Created by 41 on 2018/3/4.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SSRadioButtonControllerDelegate {

    @IBOutlet weak var button_A: UIButton!
    @IBOutlet weak var button_B: UIButton!
    @IBOutlet weak var button_C: UIButton!
    @IBOutlet weak var button_D: UIButton!
    @IBOutlet weak var answer: UILabel!
    
    var radioButtonController: SSRadioButtonsController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        radioButtonController = SSRadioButtonsController(buttons: button_A, button_B, button_C, button_D)
        radioButtonController!.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func didSelectButton(selectedButton: UIButton?) {
        let currentButton = radioButtonController!.selectedButton()
        answer.text = "你選的答案為：" + (currentButton?.currentTitle)!
    }
    
}

