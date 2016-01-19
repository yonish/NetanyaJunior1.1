//
//  MaimScreenNoLogInViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 30.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class MaimScreenNoLogInViewController: BaseViewController {

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
