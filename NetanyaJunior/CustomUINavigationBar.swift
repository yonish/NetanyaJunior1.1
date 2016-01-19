//
//  MyUINavigationBar.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 21.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class MyUINavigationBar: UINavigationController {
    
    
        
        override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
            if self.topViewController!.respondsToSelector("supportedInterfaceOrientations"){
              
        
    
    // Status bar BG color:
    UINavigationBar.appearance().barTintColor = UIColor(red:228.0/255.0, green:196.0/255.0, blue:63.0/255.0, alpha: 1.0)
    
    // self.navigationBar.barStyle = UIBarStyle.Black
    self.navigationBar.tintColor = UIColor.blackColor()
             
    
    
    // The font in tne UINav HeadTitle - SHOFAR
    let attrs = [NSForegroundColorAttributeName : UIColor.blackColor(), NSFontAttributeName : UIFont(name: "shofardemi-bold", size: 24)!]
    UINavigationBar.appearance().titleTextAttributes = attrs

                
    
                return self.topViewController!.supportedInterfaceOrientations()
            } else {
                return UIInterfaceOrientationMask.Portrait
            }
    }
    
}

