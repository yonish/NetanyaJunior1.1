//
//  AppBoldTextView.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 2.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class AppBoldTextView: UITextView {

    func initialize(){
       // self.editable = true
       // self.font = UIFont.appRegularFontWithSize(16)
        self.font = UIFont.appBoldFontWithSize(18)
        self.editable = false
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    
}