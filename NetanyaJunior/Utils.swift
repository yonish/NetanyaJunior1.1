//
//  Utils.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 15.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

extension UIFont{
    //["ShofarDemi-BoldOblique", "ShofarDemi-Bold", "ShofarRegular"]
    class func appRegularFontWithSize(size : CGFloat) -> UIFont?{
        return UIFont(name: "ShofarRegular",  size: size )!
        
    }

    class func appBoldFontWithSize(size : CGFloat) -> UIFont?{
        return UIFont(name: "ShofarDemi-Bold",  size: size )!
        
    }
    
    
    // return UIFont(name: "ShofarDemi-Bold",  size: size )


}
