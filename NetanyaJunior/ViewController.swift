//
//  ViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 6.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit


class ViewController: BaseViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // dont show the back button on the Nav
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
        

        
       
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
}

