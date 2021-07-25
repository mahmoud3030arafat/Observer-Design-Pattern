

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondlabelviewcontroller: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector:
            
            #selector(notificationFiredd(_:)), name: NSNotification.Name(rawValue: "notifyOther"), object: nil)
        
        
    }
    


    @objc func notificationFiredd( _ notifcation : Notification){
        
        print("secondVC")
        if let data = notifcation.userInfo{
                   let name  = data["xx"] as! Array<String>
                   secondlabelviewcontroller.text = name[2]
               }
    }

}
