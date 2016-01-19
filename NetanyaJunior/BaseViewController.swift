//
//  BaseViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 19.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//



 //makes some of the ViewCont (like the Main screen etc'). NOT to be horizontal

import UIKit

class BaseViewController: UIViewController {
    var allowLandsacpe = false
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       

      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if allowLandsacpe{
            return UIInterfaceOrientationMask.All
        } else {
            return UIInterfaceOrientationMask(rawValue: UIInterfaceOrientationMask.Portrait.rawValue | UIInterfaceOrientationMask.PortraitUpsideDown.rawValue)
        }
    }
    

   
}
