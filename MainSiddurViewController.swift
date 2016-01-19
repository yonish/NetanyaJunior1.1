//
//  MainSiddurViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 30.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class MainSiddurViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // go to main Screen Manu button on the NavBar
        var backImageOnMainSiddur:UIImage = UIImage(named: "home_.png")!
        backImageOnMainSiddur = backImageOnMainSiddur.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        let backButton = UIBarButtonItem(image: backImageOnMainSiddur, style: UIBarButtonItemStyle.Plain, target: self, action: "goToMaimScreen")
        self.navigationItem.leftBarButtonItem = backButton
    }
    func goToMaimScreen(){
        
        //initialize The "tfilot" Manu
        let goToMaimScreen = self.storyboard?.instantiateViewControllerWithIdentifier("MainScreenViewController") as! MainScreenViewController
        
        self.navigationController?.pushViewController(goToMaimScreen, animated: true)
        
        
        
        
       /*
        
        // check if signIn: to know where to get you back...(Shows The right button if user logged in or not) :
        let currentUser = PFUser.currentUser()
        if currentUser != nil  {
           
            //when user logged in - The button apear!
            notLogInGoHome.hidden = true
            
        } else {
            
            logedInGoHome.hidden = true
            
        }
        */
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    
    
    
    // Home buttons
    
  //  @IBOutlet var notLogInGoHome: UIButton!
  //  @IBOutlet var logedInGoHome: UIButton!
    
    
}
