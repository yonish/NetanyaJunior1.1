//
//  SignUpViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 10.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//



import UIKit

class SignUpViewController: BaseViewController, UITextFieldDelegate, UIAlertViewDelegate {
    
    
    
    // TextField variables
    @IBOutlet private weak var firstName: UITextField!
    @IBOutlet private weak var lastName: UITextField!
    @IBOutlet private weak var userName: UITextField!
    @IBOutlet private weak var userEmail: UITextField!
    @IBOutlet private weak var password: UITextField!
    @IBOutlet private weak var confirmPassword: UITextField!
    // Label to display an error below textFields
    @IBOutlet private weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // dont show the back button on the Nav
        /*
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
        */


        
        // Delegating our variables
        firstName.delegate = self
        lastName.delegate = self
        userName.delegate = self
        userEmail.delegate = self
        password.delegate = self
        confirmPassword.delegate = self
        
    }
    
    // SignUp button
    @IBAction func signUpTouched(sender: UIButton) {
        // Clear label each time the button is clicked to clear previous errors.
        errorLabel.text = ""
        
        // Initialize SignUp Model and pass in variables
        let signup = SignUp(fName: firstName.text!, lName: lastName.text!, uName: userName.text!, email: userEmail.text!, pass: password.text!, confirmPass: confirmPassword.text!)
        
        // perform try catch below to sign up user
        do {
            // call signUp model function SignUpUser()
            // anything under this try will execute if signUpUser returns true
            try signup.signUpUser()
            
            // Display an alert view showing successful signup
            let alert = signUpSeccuessAlert()
            presentViewController(alert, animated: true, completion: nil)
            
            // catches the error thrown by SignUpUser() if there is one
        } catch let error as Error {
            errorLabel.text = error.description
        } catch { errorLabel.text = "מתנצלים. משהו לא בסדר. אנא נסה שנית"
            
        }
        
    }
    // dismiss keyboard if user touches the background area
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    //Mark: This will take the user straight to the MainViewController since a session is created at signup.
    // creates and returns an alert view to display when signup + login is successful
    func signUpSeccuessAlert() -> UIAlertController {
        let alertview = UIAlertController(title: "ההרשמה וההתחברות בוצעו בהצלחה", message: "כעת תוכלו לצפות במידע ועדכונים.  \n שלחנו לך מייל לאימות. נודה לך אם תוכל/י לאמת את כתובתכם.", preferredStyle: .Alert)
        alertview.addAction(UIAlertAction(title: "מצויין. גש למסך הראשי!", style: .Default, handler: { (alertAction) -> Void in
            
            self.performSegueWithIdentifier("goHomeFromSignUp", sender: self)
            
        }))
       // alertview.addAction(UIAlertAction(title: "ביטול", style: .Cancel, handler: nil))
        
        return alertview
    }
    
    
    
}
