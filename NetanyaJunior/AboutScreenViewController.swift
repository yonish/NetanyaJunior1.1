//
//  AboutScreenViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 10.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class AboutScreenViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
        

        
        
        

        // Do any additional setup after loading the view.
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
