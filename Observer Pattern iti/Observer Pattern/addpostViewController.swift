//
//  addpostViewController.swift
//  Observer Pattern
//
//  Created by Mahmoud on 7/9/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import UIKit

class addpostViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func addpostNotificationPressed(_ sender: Any) {
        let x = ["mahmoud","ios developer","ios deev"]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notifyOther"), object: nil,userInfo: ["xx":x])
        
    }
    

}
