//
//  ViewController.swift
//  PageControl
//
//  Created by 41 on 2018/3/14.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pagecontrol: UIPageControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func handleSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case UISwipeGestureRecognizerDirection.right:
            //向右
            if pagecontrol.currentPage == 0{
                pagecontrol.currentPage = pagecontrol.numberOfPages
            }
            else{
                pagecontrol.currentPage -= 1
            }
            label.text = "第" + String(pagecontrol.currentPage) + "頁"
        case UISwipeGestureRecognizerDirection.left:
            //向左
            if pagecontrol.currentPage == pagecontrol.numberOfPages-1 {
                pagecontrol.currentPage = 0
            }
            else{
                pagecontrol.currentPage += 1
            }
            label.text = "第" + String(pagecontrol.currentPage) + "頁"
        default:
            return
        }
    }
}

