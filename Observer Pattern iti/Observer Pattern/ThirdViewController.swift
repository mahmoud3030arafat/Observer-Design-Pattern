//
//  ThirdViewController.swift
//  Observer Pattern
//
//  Created by Mahmoud on 7/22/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(fire(_:)), name: NSNotification.Name("notifyOther"), object: nil)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @objc func fire(_ notification : Notification){
        
         if let data = notification.userInfo{
            
            
            let array = data["xx"] as! Array<String>
            thirdlabel.text = array[2]
        }
        
        
        
        
    }

}
