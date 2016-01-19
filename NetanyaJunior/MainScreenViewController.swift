//
//  MainScreenViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 8.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class MainScreenViewController:
BaseViewController, UIAlertViewDelegate {

    
    @IBOutlet var loginGoTo: UIButton!
    
    @IBOutlet var logOut: UIButton!
    
    @IBAction func logOutAction(sender: UIButton) {
        
        PFUser.logOut()
        let alert = logOutAlert()
        presentViewController(alert, animated: true, completion: nil)
    }
    

    @IBAction func goToInfo(sender: AnyObject) {
        
        let currentUsercheckForInfo = PFUser.currentUser()
        if currentUsercheckForInfo != nil  {
        performSegueWithIdentifier("goToInfo", sender: self)
        
        } else {
            let alert = logOutAlert()
            presentViewController(alert, animated: true, completion: nil)
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidAppear(true)
        
        
        
        
        // dont show the back button on the Nav
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
        
        
        
        
        // check  if loggeed in for What button to show:
        let currentUsercheck = PFUser.currentUser()
        if currentUsercheck != nil  {
            
            //when user logged in - The button apear!
            loginGoTo.hidden = true
            
        } else {
            
           logOut.hidden = true
           
        }
        
    }
    
    
    // logOut Alert
    func logOutAlert() -> UIAlertController {
        let alertview = UIAlertController(title: "הנך מנותק/ת כעת מן האפליקציה", message: "ההתחברות לאפליקציה הינה הכרחית לצורך צפייה במידע ועדכוני שבת. ניתן להתחבר גם דרך חשבון המשתמש שלך בפייסבוק.", preferredStyle: .Alert)
        
        alertview.addAction(UIAlertAction(title: "ביטול", style:.Cancel, handler: { (alertAction) -> Void in
        
            self.presentedViewController
            
        }))
        
        
        alertview.addAction(UIAlertAction(title: "התחבר/י או הרשמ/י", style: .Default, handler: { (alertAction) -> Void in
            self.performSegueWithIdentifier("goToLogIn", sender: self)
            
            self.presentedViewController
            
        }))
    
        return alertview
    }

    
    
}