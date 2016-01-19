//
//  AppDelegate.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 9.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit
import MessageUI

class SendEmailViewController: BaseViewController, MFMailComposeViewControllerDelegate {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
             
        
        
        
        // iPone does have any eMail acount?
        
        if (MFMailComposeViewController.canSendMail()) {
            
            
            //in the emailBody:
            
            let emailTitle = "צעירי מזרח נתניה"
            let messageBody = "שלום, "
            let toRecipents = ["yoni.sheinin@gmail.com"]
            let mc: MFMailComposeViewController = MFMailComposeViewController()
            mc.mailComposeDelegate = self
            mc.setSubject(emailTitle)
            mc.setMessageBody(messageBody, isHTML: false)
            mc.setToRecipients(toRecipents)
            self.presentViewController(mc, animated: true, completion: nil)
        }else {
            print("לא מצאתי חשבון אימייל על מכשירך.")
        }
        
        
        
        
        
        // go to main Screen Manu button on the NavBar
        var backImageOnMainSiddur:UIImage = UIImage(named: "home_.png")!
        backImageOnMainSiddur = backImageOnMainSiddur.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        let backButton = UIBarButtonItem(image: backImageOnMainSiddur, style: UIBarButtonItemStyle.Plain, target: self, action: "goToMaimScreen")
        self.navigationItem.leftBarButtonItem = backButton
    }
    func goToMaimScreen(){
        
        //initialize The "Manu" icon
        let goToMaimScreen = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController
        
        self.navigationController?.pushViewController(goToMaimScreen, animated: true)
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
    }
    
    // Email Delegate
    func mailComposeController(controller:MFMailComposeViewController, didFinishWithResult result:MFMailComposeResult, error:NSError?) {
        
        // frint to the Lable The resault of tha action:
        switch result.rawValue {
        case MFMailComposeResultCancelled.rawValue: printResault.text = "שליחת המייל בוטלה"
        case MFMailComposeResultSaved.rawValue: printResault.text =  "האימייל נשמר. ניתן לשלוח את המייל במועד מאוחר יותר מתיקיית הטיוטות בחשבון המייל."
        case MFMailComposeResultSent.rawValue: printResault.text =  "האימייל נשלח"
        case MFMailComposeResultFailed.rawValue: printResault.text = "שליחת המייל נכשלה"
        default:
            break
        }
        self.dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    
    @IBOutlet var printResault: UILabel!
   
}
