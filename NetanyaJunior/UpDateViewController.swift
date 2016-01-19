//
//  UpDateViewController.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 14.10.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit

class UpDateViewController: BaseViewController, UIWebViewDelegate, UIScrollViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
      
        
        

        
        //parasha format
        let calculator = KCParashatHashavuaCalculator()
        let parasha = calculator.parashaInIsraelForDate(NSDate())
        
        
        // exact Shabbat comes in Calc
        
        //location = our exact shul location
       let Place = KCZmanimCalendar(location: KCGeoLocation(latitude: 32.3054005, andLongitude: 34.8717275, andTimeZone: NSTimeZone.defaultTimeZone()))
        
        //next shishi
        let shishiHakarov = NSCalendar.currentCalendar().dateBySettingUnit(NSCalendarUnit.Weekday, value: 6, ofDate: NSDate(), options: NSCalendarOptions.MatchFirst)
        
        // next Shabbat
         let shabbat = NSCalendar.currentCalendar().dateBySettingUnit(NSCalendarUnit.Weekday, value: 7, ofDate: NSDate(), options: NSCalendarOptions.MatchFirst)
        
        
        
        //Calc for Shabbat comes in
        Place.workingDate = shishiHakarov
        var yomShishi = Place.sunset()
        yomShishi = yomShishi.dateByAddingTimeInterval(-20 * 60)
        
        //Calc Minha in Shishi
        Place.workingDate = shishiHakarov
        var yomShishiMinha = Place.sunset()
        yomShishiMinha = yomShishiMinha.dateByAddingTimeInterval(-10 * 60)
        
        
        //Calc For Minha on Shabbat
        Place.workingDate = shishiHakarov
        var shabbatMinha = Place.sunset()
        shabbatMinha = shabbatMinha.dateByAddingTimeInterval(-30 * 60)
        
        
        
        //Calc For mitzei Shabbat maariv
        Place.workingDate = shabbat
        var motzeiShabbatMaariv = Place.tzais()
        motzeiShabbatMaariv = motzeiShabbatMaariv.dateByAddingTimeInterval(-5 * 60)
        
        
        
        //Calc Shabbat comes out
        Place.workingDate = shabbat
        var yetsiatShabbat = Place.tzais()
        yetsiatShabbat = yetsiatShabbat.dateByAddingTimeInterval(+0 * 60)
            
            


        
        
        
        //formatter for knisat-Shabbat
        let sabbatInFormatter = NSDateFormatter()
        sabbatInFormatter.dateFormat = "hh:mm"
        print(sabbatInFormatter.stringFromDate(yomShishi))
      
        
        //formatter for Minha on Shishi
        let yomShishiMinhaFormatter = NSDateFormatter()
        yomShishiMinhaFormatter.dateFormat = "hh:mm"
        print(yomShishiMinhaFormatter.stringFromDate(yomShishiMinha))
        
        //formatter for shabbat minha
        let shabbatMinhaFormatter = NSDateFormatter()
        shabbatMinhaFormatter.dateFormat = "hh:mm"
        print(shabbatMinhaFormatter.stringFromDate(shabbatMinha))
        
        
        //formatter for Shabbat Out
        let sabbatOutFormatter = NSDateFormatter()
        sabbatOutFormatter.dateFormat = "hh:mm"
        print(sabbatOutFormatter.stringFromDate(yetsiatShabbat))
        
        
        
        //formatter for motzei Shabbat maariv
        let motzeiShabbatMaarivFormatter = NSDateFormatter()
        motzeiShabbatMaarivFormatter.dateFormat = "hh:mm"
        print(motzeiShabbatMaarivFormatter.stringFromDate(motzeiShabbatMaariv))
        
        
        
        
        
        parashName.text = parasha.name()
        
        shabbtIn.text = sabbatInFormatter.stringFromDate(yomShishi)
        
        minhaErevShabbat.text = yomShishiMinhaFormatter.stringFromDate(yomShishiMinha)
        
        minhaOnShabbat.text = shabbatMinhaFormatter.stringFromDate(shabbatMinha)
        
        shabbatOut.text = sabbatOutFormatter.stringFromDate(yetsiatShabbat)
        
        maarivMotzei.text = motzeiShabbatMaarivFormatter.stringFromDate(motzeiShabbatMaariv)
        
        
        
        func scrollViewDidScroll(scrollView: UIScrollView) {
            if (scrollView.contentOffset.y > 0){
                scrollView.contentOffset = CGPointMake(1, scrollView.contentOffset.y)
            }
        }
        
        
        /*
        WebView for The upDates NOT IN USE
        let url = NSURL (string: "http://netanya-junior.co.il/update/");
        let requestObj = NSURLRequest(URL: url!);
        webUpdates.loadRequest(requestObj);
        webUpdates.scrollView.delegate = self
        webUpdates.scrollView.showsHorizontalScrollIndicator = true
        */
        
        
        
        
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
    
    
    @IBOutlet var parashName: UILabel!

    @IBOutlet var shabbtIn: UILabel!
    
    @IBOutlet var minhaErevShabbat: UILabel!
    
    @IBOutlet var minhaOnShabbat: UILabel!
    
    @IBOutlet var shabbatOut: UILabel!
    
    @IBOutlet var maarivMotzei: UILabel!
    
  //  @IBOutlet var webUpdates: UIWebView!
    
    
}