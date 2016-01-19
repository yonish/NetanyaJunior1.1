//
//  ManuOfPraysTableViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 1.12.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class ManuOfPraysTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // go to main "tfilot" Manu button on the NavBar
        var backImage:UIImage = UIImage(named: "menu.png")!
        backImage = backImage.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        let backButton = UIBarButtonItem(image: backImage, style: UIBarButtonItemStyle.Plain, target: self, action: "goToMaim")
        self.navigationItem.leftBarButtonItem = backButton
    }
    
    func goToMaim(){

        //Initiate The "tfilot" Manu
        let goToMaim = self.storyboard?.instantiateViewControllerWithIdentifier("MainSiddurViewController") as! MainSiddurViewController
        
        self.navigationController?.pushViewController(goToMaim, animated: false)
        
    

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
}