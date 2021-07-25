//
//  FirstViewController.swift
//  Observer Pattern
//
//  Created by Mahmoud on 7/9/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstlabelviewcontroller: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(notificationFired(_:)), name: NSNotification.Name(rawValue: "notifyOther"), object: nil)

//        NotificationCenter.default.addObserver(self, selector: #selector(notificationFired(_:)), name: NSNotification.Name(rawValue: "notifyOther"), object: nil)
        
    }
    

  
    @objc func notificationFired( _ notifcation : Notification){


        
        if let data = notifcation.userInfo{
            let name = data["xx"] as! Array<String>
            firstlabelviewcontroller.text = name[0]
            
        }
    }

}
