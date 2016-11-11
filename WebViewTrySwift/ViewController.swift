//
//  ViewController.swift
//  WebViewTrySwift
//
//  Created by Kutung-PC48 on 11/11/16.
//  Copyright © 2016 Muthukumaresh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {
    

    @IBOutlet weak var myWebView: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let url = NSURL(string: "http://www.kutung.com/demo/tnq-website/index.html")
//        
//        let request = NSURLRequest(URL: url!)
        
        myWebView.delegate=self
        
        myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://www.kutung.com/demo/tnq-website/index.html")!))
        
        
        
        myWebView.reload()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false

    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }


}

