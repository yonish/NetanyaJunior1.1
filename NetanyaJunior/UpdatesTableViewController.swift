//
//  UpdatesTable.swift
//  NetanyaJunior
//
//  Created by yoni sheinin on 23.11.2015.
//  Copyright © 2015 YoniSh. All rights reserved.
//

import UIKit
    
class UpdatesTable: UIViewController,UITableViewDataSource,UITableViewDelegate
    
{
    
    //This File Parsing JSON File To File UpdatesTableViewController
    
    
    //can be Parse from internal file, or, from Web
    // set text JSONFile : json data from file OR set text JSONUrl : json data from web url

    let yourJsonFormat: String = "JSONUrl"
    var arrDict :NSMutableArray=[]
    
    @IBOutlet weak var tvJSON: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if yourJsonFormat == "JSONFile" {
            jsonParsingFromFile()
        } else {
            jsonParsingFromURL()
        }
    }
    

    
    //from web - netanya junior site
    func jsonParsingFromURL () {
        
        let session = NSURLSession.sharedSession()
        let urlString = "http://netanya-junior.co.il/update/json/"
        let url = NSURL(string: urlString)
        let request = NSURLRequest(URL: url!)
        let dataTask = session.dataTaskWithRequest(request) {
            (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
        
            self.startParsing(data!)
        }
        dataTask.resume()
    }
    
    
        // from Local file (...NOT IN USE RIGHT NOW...)
        func jsonParsingFromFile()
        {
            let path: NSString = NSBundle.mainBundle().pathForResource("updates", ofType: "json")!
            let data : NSData = try! NSData(contentsOfFile: path as String, options: NSDataReadingOptions.DataReadingMapped)
            
            self.startParsing(data)
        }
        
     
     //sets the parsing
        func startParsing(data :NSData)
        {
            let dict: NSDictionary!=(try! NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers)) as! NSDictionary
            
            
            //check the JSON,  gets the Updates from server
            
            for var i = 0 ; i < (dict.valueForKey("UPDATE") as! NSArray).count ; i++
            {
                arrDict.addObject((dict.valueForKey("UPDATE") as! NSArray) .objectAtIndex(i))
            }
           
            tvJSON .reloadData()
        }
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int
        {
            return 1
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return arrDict.count
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
            var cell : TableViewCell! = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
            if(cell == nil)
            {
                cell = NSBundle.mainBundle().loadNibNamed("Cell", owner: self, options: nil)[0] as! TableViewCell;
            }
            let strTitle : NSString=arrDict[indexPath.row] .valueForKey("TITLE") as! NSString
            let strDescription : NSString=arrDict[indexPath.row] .valueForKey("DETAILS") as! NSString
            cell.lblTitle.text=strTitle as String
            cell.lbDetails.text=strDescription as String
            return cell as TableViewCell
        }

        
        
}