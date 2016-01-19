//
//  SignInViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 10.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit
import ParseFacebookUtilsV4




class SignInViewController: BaseViewController, UITextFieldDelegate  {
    // textField variables
    @IBOutlet private weak var userName: UITextField!
    @IBOutlet private weak var password: UITextField!
    @IBOutlet private weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // don't show the back button on the Nav
        /*
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
        */
        
        
              
        
        
        // delegate variables
        userName.delegate = self
        password.delegate = self
    }
    
    // Sign In button
    @IBAction func signInTouched(sender: UIButton) {
        // initialize SignIn model and pass in variables
        let signin = SignIn(user: userName.text!, pass: password.text!)
        
        do {
            // call signIn model function SignInUser()
            // anything under this try will execute if signInUser returns true
            try signin.signInUser()
          
            
             // Display an alert view showing successful
            let alert = signInSeccuessAlert()
            presentViewController(alert, animated: true, completion: nil)
            
           
            // catches error thrown by SignInUser() if there is one
        } catch let error as Error {
            errorLabel.text = error.description
        } catch {
            errorLabel.text = "מתנצלים. יש בעיה. \n אנא נסה להתחבר שוב"
        }
       
        
    }
    
    
     // FB Sign In button
    @IBAction func fbsignInButton(sender: AnyObject) {
        
        PFFacebookUtils.logInInBackgroundWithReadPermissions(["public_profile","email"])
            { (user:PFUser?, Error:NSError?) -> Void in
            
            if (Error != nil) {
                self.errorLabel.text = "אירעה שגיאה. אנא נסה שוב מאוחר יותר"
                
                return
            }
            
                if (FBSDKAccessToken.currentAccessToken() != nil) {
                    
                    let alert = self.fbSignInSeccuessAlert()
                    self.presentViewController(alert, animated: true, completion: nil)
                    
                }
                
        }
        
        
    }
    
    
    // Dismiss keyboard if user touches the background area
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    
        // login Succses Alert
        func signInSeccuessAlert() -> UIAlertController {
            let alertview = UIAlertController(title: "ההתחברות בוצעה בהצלחה", message: "כעת תוכלו לצפות בעדכונים", preferredStyle: .Alert)
            alertview.addAction(UIAlertAction(title: "מצויין. גש למסך הראשי!", style: .Default, handler: { (alertAction) -> Void in
                
                self.performSegueWithIdentifier("goHomeFromLogin", sender: self)
                
            }))
        
            
            
            return alertview
    }
    
     // login FB Succses Alert
    func fbSignInSeccuessAlert() -> UIAlertController {
        let alertview = UIAlertController(title: "ההתחברות דרך פייסבוק בוצעה בהצלחה", message: "כעת תוכלו לצפות בעדכונים", preferredStyle: .Alert)
        alertview.addAction(UIAlertAction(title: "מצויין. גש למסך הראשי!", style: .Default, handler: { (alertAction) -> Void in
            
            self.performSegueWithIdentifier("goHomeFromLogin", sender: self)
            
        }))
        
        
        
        return alertview
    }

    
    
    
    
    
}
