//
//  ViewController.swift
//  Web View
//
//  Created by 41 on 2018/3/13.
//  Copyright © 2018年 41. All rights reserved.
//

import UIKit

// 如果要看 html 檔要先連接 WebView Delegate
class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    // 在 Information Property List 中加入 App Transport Security Settings
    // 在 App Transport Security Settings 中加入 Allow Arbitrary Loads 並設定為 YES
    // 此設定表示讓外部 URL 也能匯進 WebView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 設定 WebView 所要連結的網站
        let url = URL(string: "https://www.apple.com")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    func passingDataToWebview (index: Int, location: String) {
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("載入完成，內容為：")
        let html = webView.stringByEvaluatingJavaScript(from: "document.body.innerHTML")
        print(html ?? "Empty Data!")
    }
}
