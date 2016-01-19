//
//  AboutTheDeveloperViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 24.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class AboutTheDeveloperViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /* 
        
        //WebView for The upDates NOT IN USE
        let url = NSURL (string: "http://yonisheinin.com/");
        let requestObj = NSURLRequest(URL: url!);
        webUpdates.loadRequest(requestObj);
        webUpdates.scrollView.showsHorizontalScrollIndicator = true

        */
        

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func downloadResumePdf(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "http://yonish.net/wp-content/uploads/2016/01/resume_2016.pdf")!)
    }
    
    @IBAction func goToYoniShSite(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "http://yonish.net/")!)
    }
  
    
    //   @IBOutlet var webUpdates: UIWebView!
    
    
}
