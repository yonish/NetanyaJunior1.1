//
//  BaseNavigationController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 19.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    
   
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if self.topViewController!.respondsToSelector("supportedInterfaceOrientations"){
            return self.topViewController!.supportedInterfaceOrientations()
        } else {
            return UIInterfaceOrientationMask.Portrait
        }
    }
    



}
