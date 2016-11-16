//
//  JasonWebviewController.swift
//  Jasonette
//
//  Created by Carlos Puchol on 11/15/16.
//  Copyright © 2016 Jasonette. All rights reserved.
//

import UIKit
import WebKit

@objc class JasonWebviewController: UIViewController, WKNavigationDelegate {
    
    var url:String = ""
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        // webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.load(URLRequest(url: URL(string: url)!))
        webView.allowsBackForwardNavigationGestures = true
        webView.allowsLinkPreview = true
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
}
