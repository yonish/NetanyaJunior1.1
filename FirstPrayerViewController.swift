//
//  FirstPrayerViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 20.12.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class FirstPrayerViewController: BaseViewController {
    
    //
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.allowLandsacpe = true
    }


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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
