//
//  AppTextView.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 15.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class AppTextView: UITextView {

    func initialize(){
       
        
     //   let prefs = NSUserDefaults.standardUserDefaults()
        
       // font = UIFont(name: font!.fontName, size: CGFloat(prefs.floatForKey("fontSize")))
        
        
        
        // self.editable = true
        self.font = UIFont.appRegularFontWithSize(16)
        //self.editable = false
        
        
    }
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    
    
    

}


